package com.cosmoclub.services;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Comment;
import com.cosmoclub.repositories.CommentRepository;

@Service
public class CommentService {
		
	@Autowired
	private CommentRepository commentRepo;
	
	public Comment createComment(Comment comment) {
		return commentRepo.save(comment);
	}
	
	public Comment findcommentById(Long id) {
		Optional<Comment> comment = commentRepo.findById(id);
		if (comment.isPresent()) {
			return comment.get();
		} else {
			return null;
		}
	}
	
	public List<Comment> commentsByPost(Long id){
		return commentRepo.findAllCommentByPostId(id);
	}
	
	public Long countCommentsByPostId(Long postId) {
        return commentRepo.countByPostId(postId); //this
    }
	
	// Calcular de fechas
    public String calcularFecha(Date createdAt) {
        long now = System.currentTimeMillis();
        long createdAtMillis = createdAt.getTime();
        long differenceMillis = now - createdAtMillis;
        long differenceSeconds = TimeUnit.MILLISECONDS.toSeconds(differenceMillis);
        long differenceMinutes = TimeUnit.SECONDS.toMinutes(differenceSeconds);
        long differenceHours = TimeUnit.MINUTES.toHours(differenceMinutes);
        long differenceDays = TimeUnit.HOURS.toDays(differenceHours);
        long differenceWeeks = differenceDays / 7;
        long differenceMonths = differenceDays / 30;
        long differenceYears = differenceDays / 365;

        if (differenceYears > 0) {
            return "hace " + differenceYears + (differenceYears == 1 ? " año" : " años");
        } else if (differenceMonths > 0) {
            return "hace " + differenceMonths + (differenceMonths == 1 ? " mes" : " meses");
        } else if (differenceWeeks > 0) {
            return "hace " + differenceWeeks + (differenceWeeks == 1 ? " semana" : " semanas");
        } else if (differenceDays > 0) {
            return "hace " + differenceDays + (differenceDays == 1 ? " día" : " días");
        } else if (differenceHours > 0) {
            return "hace " + differenceHours + (differenceHours == 1 ? " hr" : " hrs");
        } else if (differenceMinutes > 0) {
            return "hace " + differenceMinutes + (differenceMinutes == 1 ? " min" : " mins");
        } else {
            return "hace " + differenceSeconds + (differenceSeconds == 1 ? " seg" : " segs");
        }
    }
}
