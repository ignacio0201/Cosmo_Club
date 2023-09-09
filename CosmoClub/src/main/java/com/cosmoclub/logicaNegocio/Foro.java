package com.cosmoclub.logicaNegocio;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import com.cosmoclub.models.ImgPost;
import com.cosmoclub.models.Post;
import com.cosmoclub.services.ImgPostService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class Foro {
	
	@Autowired
	private ImgPostService imgPostService;
	
	private final String UPLOAD_DIR = "src/main/resources/static/img/post-images";
	
	public void guardarImgPost(Post post, MultipartFile post_img) {
		Path uploadPath = Paths.get(UPLOAD_DIR).toAbsolutePath().normalize();

        File uploadDir = new File(uploadPath.toString());
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        String originalFileName = post_img.getOriginalFilename();

        Path imagePath = uploadPath.resolve(originalFileName);

        try {
			post_img.transferTo(imagePath.toFile());
			ImgPost imgPost = new ImgPost();
			imgPost.setPost_images("/" + originalFileName);
			imgPost.setPost(post);
			imgPostService.createImgPost(imgPost);
			
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
	}

}
