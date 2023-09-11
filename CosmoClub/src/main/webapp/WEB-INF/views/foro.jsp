<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CosmoClub</title>
    <link rel="icon" type="image/x-icon" href="img/icon.jpeg">
    <script src="https://kit.fontawesome.com/9e0d9f4598.js" crossorigin="anonymous"></script>
	<!--Iconos-->
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	<!--CSS personalizado-->
	<link rel="stylesheet" href="../css/preloader.css">
	<link rel="stylesheet" href="../css/foro.css">
	<!-- Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<!-- Bootstrap Icons -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>

<body>
	<div class="main-container d-flex">
		<div class="preloader">
			<svg
			  class="outer-space"
			  width="1137"
			  height="729"
			  viewBox="0 0 1137 729"
			  fill="none"
			  xmlns="http://www.w3.org/2000/svg"
			>
			  <g id="outer-space">
				<mask
				  id="mask0"
				  mask-type="alpha"
				  maskUnits="userSpaceOnUse"
				  x="0"
				  y="0"
				  width="1137"
				  height="729"
				>
				  <path
					id="background"
					d="M992 622.36C982.777 623.153 973.498 623.029 964.3 621.99C863.18 610.81 725.48 613.99 613.23 683.54C457.99 779.71 214.7 697.38 107.38 652.59C25.38 618.38 -17.19 534.59 8.38001 455.94C8.74001 454.83 9.11001 453.72 9.50001 452.61C25.59 405.87 57.35 369.29 96.68 349.9C130.96 333 181.01 297.71 203.28 229.9C212.48 201.9 225.1 175.56 241.49 152.6C285.38 91.11 377.26 -0.459991 535.28 0.110009C562.986 0.24423 590.484 4.89873 616.69 13.89C674.42 33.56 726.56 73.55 766.32 128.99C791.69 164.35 829.71 197.22 884.14 199.9C959.68 203.64 1031.77 238.81 1085.85 301.4C1087.41 303.2 1088.95 305.01 1090.49 306.84C1186.78 421.55 1119.9 611.18 992 622.36Z"
					fill="#00428D"
				  />
				</mask>
				<g mask="url(#mask0)">
				  <rect
					id="Rectangle 1"
					x="1"
					width="1135"
					height="728"
					fill="#00428D"
				  />
				  <path
					id="star"
					d="M204.11 333.24C206.927 333.24 209.21 330.957 209.21 328.14C209.21 325.323 206.927 323.04 204.11 323.04C201.293 323.04 199.01 325.323 199.01 328.14C199.01 330.957 201.293 333.24 204.11 333.24Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M568.11 629.24C570.927 629.24 573.21 626.957 573.21 624.14C573.21 621.323 570.927 619.04 568.11 619.04C565.293 619.04 563.01 621.323 563.01 624.14C563.01 626.957 565.293 629.24 568.11 629.24Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M353.11 652.99C354.684 652.99 355.96 651.714 355.96 650.14C355.96 648.566 354.684 647.29 353.11 647.29C351.536 647.29 350.26 648.566 350.26 650.14C350.26 651.714 351.536 652.99 353.11 652.99Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M984.11 514.99C985.684 514.99 986.96 513.714 986.96 512.14C986.96 510.566 985.684 509.29 984.11 509.29C982.536 509.29 981.26 510.566 981.26 512.14C981.26 513.714 982.536 514.99 984.11 514.99Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M821.11 258.99C822.684 258.99 823.96 257.714 823.96 256.14C823.96 254.566 822.684 253.29 821.11 253.29C819.536 253.29 818.26 254.566 818.26 256.14C818.26 257.714 819.536 258.99 821.11 258.99Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M1052.11 383.99C1053.68 383.99 1054.96 382.714 1054.96 381.14C1054.96 379.566 1053.68 378.29 1052.11 378.29C1050.54 378.29 1049.26 379.566 1049.26 381.14C1049.26 382.714 1050.54 383.99 1052.11 383.99Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M294.11 166.24C296.927 166.24 299.21 163.957 299.21 161.14C299.21 158.323 296.927 156.04 294.11 156.04C291.293 156.04 289.01 158.323 289.01 161.14C289.01 163.957 291.293 166.24 294.11 166.24Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M153.94 506.21H149.4V501.67H147.55V506.21H143.01V508.06H147.55V512.59H149.4V508.06H153.94V506.21Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M267.94 504.21H263.4V499.67H261.55V504.21H257.01V506.06H261.55V510.59H263.4V506.06H267.94V504.21Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M430.94 596.21H426.4V591.67H424.55V596.21H420.01V598.06H424.55V602.59H426.4V598.06H430.94V596.21Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M657.97 44.71H655.9V42.64H655.06V44.71H652.99V45.55H655.06V47.62H655.9V45.55H657.97V44.71Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M952.97 234.71H950.9V232.64H950.06V234.71H947.99V235.55H950.06V237.62H950.9V235.55H952.97V234.71Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M778.97 358.71H776.9V356.64H776.06V358.71H773.99V359.55H776.06V361.62H776.9V359.55H778.97V358.71Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M70.97 436.71H68.9V434.64H68.06V436.71H65.99V437.55H68.06V439.62H68.9V437.55H70.97V436.71Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M155.97 606.71H153.9V604.64H153.06V606.71H150.99V607.55H153.06V609.62H153.9V607.55H155.97V606.71Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M422.97 69.71H420.9V67.64H420.06V69.71H417.99V70.55H420.06V72.62H420.9V70.55H422.97V69.71Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M296.97 368.71H294.9V366.64H294.06V368.71H291.99V369.55H294.06V371.62H294.9V369.55H296.97V368.71Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M323.97 282.71H321.9V280.64H321.06V282.71H318.99V283.55H321.06V285.62H321.9V283.55H323.97V282.71Z"
					fill="white"
				  />
				  <path
					id="star"
					d="M955.9 344.07C956.916 344.07 957.74 343.246 957.74 342.23C957.74 341.214 956.916 340.39 955.9 340.39C954.884 340.39 954.06 341.214 954.06 342.23C954.06 343.246 954.884 344.07 955.9 344.07Z"
					fill="white"
				  />
				</g>
			  </g>
			</svg>
		
			<div class="rocket-container">
			  <svg
				class="rocket"
				width="525"
				height="697"
				viewBox="0 0 525 697"
				fill="none"
				xmlns="http://www.w3.org/2000/svg"
			  >
				<g id="rocket">
				  <g id="Group" opacity="0.7">
					<path
					  id="Vector"
					  opacity="0.7"
					  d="M405.97 307.03C406.052 281.967 400.047 257.259 388.47 235.03C382.98 224.59 377.97 218.11 374.11 214.12C372.636 212.562 370.71 211.506 368.604 211.101C366.498 210.696 364.317 210.961 362.37 211.86C360.813 212.412 359.406 213.32 358.26 214.51C353.05 219.91 348.34 227.05 344.26 234.64C332.088 257.399 325.774 282.831 325.89 308.64V324.12H315.96V144.11C315.96 106.39 307.52 69.18 290.96 36.18C283.12 20.54 275.96 10.82 270.47 4.84999C269.137 3.33067 267.496 2.11334 265.655 1.27936C263.814 0.445386 261.816 0.0139771 259.795 0.0139771C257.774 0.0139771 255.776 0.445386 253.935 1.27936C252.094 2.11334 250.453 3.33067 249.12 4.84999C241.68 12.94 234.96 23.64 229.12 35.01C211.73 68.73 202.9 107.01 202.9 145.83V324.05H194.32V307.82C194.429 282.027 188.116 256.613 175.95 233.87C171.84 226.28 167.13 219.14 161.95 213.74C160.445 212.142 158.468 211.068 156.309 210.676C154.149 210.283 151.921 210.593 149.95 211.56L150.31 211.75C149.054 212.309 147.917 213.103 146.96 214.09C143.11 218.09 138.1 224.56 132.61 235C121.033 257.229 115.028 281.937 115.11 307V576H145.75L142.37 598.11V664.24H167.43V598.11L164.08 575.99H194.28V330.99H202.86V574.93H227.33L223.82 598.11V664.24H248.88V598.11L245.37 574.9H278.37L274.84 598.11V664.24H299.9V598.11L296.39 574.9H315.93V331.02H325.86V576.39H333.91V576.02H360.53L357.19 598.11V664.24H382.25V598.11L378.9 575.99H405.97V307.03Z"
					  fill="url(#paint0_linear)"
					/>
				  </g>
				  <path
					id="Vector_2"
					d="M172.4 585.25H148.67L152.91 556.44H168.16L172.4 585.25Z"
					fill="#535461"
				  />
				  <g id="Group_2" opacity="0.1">
					<path
					  id="Vector_3"
					  opacity="0.1"
					  d="M151.73 567.88H169.34L168.16 559.83H152.91L151.73 567.88Z"
					  fill="black"
					/>
				  </g>
				  <path
					id="Vector_4"
					d="M375.75 585.25H352.03L356.26 556.44H371.52L375.75 585.25Z"
					fill="#535461"
				  />
				  <g id="Group_3" opacity="0.1">
					<path
					  id="Vector_5"
					  opacity="0.1"
					  d="M355.08 567.88H372.7L371.52 559.83H356.26L355.08 567.88Z"
					  fill="black"
					/>
				  </g>
				  <path
					id="Vector_6"
					d="M249.5 585.25H225.78L230.01 556.44H245.27L249.5 585.25Z"
					fill="#535461"
				  />
				  <g id="Group_4" opacity="0.1">
					<path
					  id="Vector_7"
					  opacity="0.1"
					  d="M228.83 567.88H246.45L245.27 559.83H230.01L228.83 567.88Z"
					  fill="black"
					/>
				  </g>
				  <path
					id="Vector_8"
					d="M297.8 585.25H274.08L278.31 556.44H293.56L297.8 585.25Z"
					fill="#535461"
				  />
				  <g id="Group_5" opacity="0.1">
					<path
					  id="Vector_9"
					  opacity="0.1"
					  d="M277.13 567.88H294.75L293.56 559.83H278.31L277.13 567.88Z"
					  fill="black"
					/>
				  </g>
				  <path
					id="Vector_10"
					d="M341.86 318.35H172.4V325.13H341.86V318.35Z"
					fill="#535461"
				  />
				  <path
					id="Vector_11"
					d="M368.05 211.27C367.155 210.281 366.062 209.491 364.843 208.95C363.623 208.409 362.304 208.129 360.97 208.129C359.636 208.129 358.317 208.409 357.097 208.95C355.878 209.491 354.785 210.281 353.89 211.27C348.96 216.53 344.5 223.48 340.61 230.87C329.071 253.109 323.104 277.816 323.22 302.87V563.71H398.22V301.77C398.314 277.409 392.636 253.373 381.65 231.63C376.44 221.47 371.7 215.11 368.05 211.27Z"
					fill="#E0E0E0"
				  />
				  <path
					id="Vector_12"
					d="M152.98 211.27C153.875 210.281 154.968 209.491 156.187 208.95C157.407 208.409 158.726 208.129 160.06 208.129C161.394 208.129 162.713 208.409 163.933 208.95C165.152 209.491 166.245 210.281 167.14 211.27C172.08 216.53 176.53 223.48 180.43 230.87C191.964 253.11 197.932 277.817 197.82 302.87V563.71H122.82V301.77C122.726 277.409 128.404 253.373 139.39 231.63C144.59 221.47 149.33 215.11 152.98 211.27Z"
					fill="#E0E0E0"
				  />
				  <path
					id="Vector_13"
					d="M123.25 307.33L141.05 307.42V329.36H123.25V307.33Z"
					fill="#535461"
				  />
				  <path
					id="Vector_14"
					d="M180.02 307.33L197.82 307.42V329.36H180.02V307.33Z"
					fill="#535461"
				  />
				  <path
					id="Vector_15"
					d="M323.22 307.33L341.01 307.42V329.36H323.22V307.33Z"
					fill="#535461"
				  />
				  <path
					id="Vector_16"
					d="M379.99 307.33L397.78 307.42V329.36H379.99V307.33Z"
					fill="#535461"
				  />
				  <g id="Group_6" opacity="0.1">
					<path
					  id="Vector_17"
					  opacity="0.1"
					  d="M180.43 230.53C176.53 223.14 172.08 216.19 167.14 210.93C165.745 209.383 163.881 208.337 161.835 207.952C159.788 207.568 157.671 207.865 155.81 208.8C156.882 209.335 157.85 210.056 158.67 210.93C163.6 216.19 168.06 223.14 171.95 230.53C183.49 252.768 189.457 277.476 189.34 302.53V563.35H197.82V302.54C197.934 277.483 191.966 252.773 180.43 230.53V230.53Z"
					  fill="black"
					/>
				  </g>
				  <g id="Group_7" opacity="0.1">
					<path
					  id="Vector_18"
					  opacity="0.1"
					  d="M347.39 231.25C351.28 223.86 355.74 216.91 360.67 211.65C361.592 210.654 362.708 209.857 363.95 209.31C362.117 208.508 360.079 208.302 358.123 208.722C356.167 209.142 354.392 210.166 353.05 211.65C348.11 216.91 343.65 223.86 339.76 231.25C328.226 253.49 322.258 278.197 322.37 303.25V564.11H330V303.27C329.88 278.209 335.848 253.495 347.39 231.25V231.25Z"
					  fill="black"
					/>
				  </g>
				  <path
					id="Vector_19"
					d="M160.86 649.65H160.21C157.149 649.65 154.214 648.434 152.05 646.27C149.886 644.106 148.67 641.171 148.67 638.11V585.25H172.4V638.11C172.4 641.171 171.184 644.106 169.02 646.27C166.856 648.434 163.921 649.65 160.86 649.65Z"
					fill="#FFB23E"
				  />
				  <path
					id="Vector_20"
					d="M237.97 649.65H237.31C234.251 649.647 231.318 648.43 229.156 646.266C226.994 644.103 225.78 641.169 225.78 638.11V585.25H249.5V638.11C249.5 641.169 248.286 644.103 246.124 646.266C243.962 648.43 241.029 649.647 237.97 649.65Z"
					fill="#FFB23E"
				  />
				  <path
					id="Vector_21"
					d="M286.26 649.65H285.59C282.535 649.642 279.607 648.423 277.449 646.259C275.292 644.096 274.08 641.165 274.08 638.11V585.25H297.8V638.11C297.8 641.171 296.584 644.106 294.42 646.27C292.256 648.434 289.321 649.65 286.26 649.65Z"
					fill="#FFB23E"
				  />
				  <path
					id="Vector_22"
					d="M364.22 649.65H363.59C362.073 649.653 360.57 649.356 359.168 648.777C357.765 648.199 356.491 647.349 355.417 646.277C354.343 645.205 353.492 643.932 352.91 642.531C352.329 641.129 352.03 639.627 352.03 638.11V585.25H375.75V638.11C375.75 641.169 374.536 644.103 372.374 646.266C370.212 648.43 367.279 649.647 364.22 649.65Z"
					fill="#FFB23E"
				  />
				  <path
					id="Vector_23"
					d="M269.93 6.75C268.691 5.27579 267.144 4.09054 265.399 3.27739C263.653 2.46423 261.751 2.04288 259.825 2.04288C257.899 2.04288 255.997 2.46423 254.251 3.27739C252.506 4.09054 250.959 5.27579 249.72 6.75C242.72 14.63 236.32 25.04 230.72 36.12C214.26 68.96 205.9 106.24 205.9 144.04V562.65H312.9V142.36C312.9 105.63 304.9 69.36 289.26 37.26C281.91 22.03 275.14 12.56 269.93 6.75Z"
					fill="#EEEEEE"
				  />
				  <path
					id="Vector_24"
					d="M275.63 53.25H241.79C235.715 53.25 230.79 58.1749 230.79 64.25V67.84C230.79 73.9151 235.715 78.84 241.79 78.84H275.63C281.705 78.84 286.63 73.9151 286.63 67.84V64.25C286.63 58.1749 281.705 53.25 275.63 53.25Z"
					fill="#535461"
				  />
				  <g id="Group_8" opacity="0.1">
					<path
					  id="Vector_25"
					  opacity="0.1"
					  d="M312.39 158.35H206.48V162.46H312.39V158.35Z"
					  fill="black"
					/>
				  </g>
				  <g id="circle">
					<path
					  id="Vector_26"
					  d="M497.04 311.33C494.263 307.683 490.789 304.624 486.82 302.33V302.33C482.26 299.7 477.156 298.155 471.903 297.813C466.65 297.47 461.389 298.341 456.526 300.357C451.663 302.372 447.329 305.479 443.858 309.437C440.388 313.396 437.874 318.099 436.511 323.184C435.149 328.268 434.974 333.598 436 338.761C437.026 343.924 439.225 348.783 442.429 352.96C445.632 357.137 449.753 360.522 454.473 362.852C459.193 365.183 464.386 366.397 469.65 366.4C470.38 366.4 471.11 366.4 471.82 366.32C478.007 365.93 483.972 363.871 489.083 360.362C494.194 356.854 498.259 352.026 500.846 346.393C503.434 340.76 504.447 334.531 503.779 328.368C503.11 322.205 500.785 316.338 497.05 311.39L497.04 311.33Z"
					  fill="url(#paint1_linear)"
					/>
					<path
					  id="Vector_27"
					  opacity="0.2"
					  d="M502.09 332.01C502.089 340.26 498.945 348.201 493.298 354.216C487.65 360.231 479.924 363.869 471.69 364.39C471.02 364.39 470.33 364.46 469.64 364.46C464.659 364.463 459.745 363.32 455.277 361.119C450.809 358.918 446.907 355.718 443.874 351.767C440.841 347.817 438.757 343.221 437.785 338.336C436.813 333.451 436.978 328.408 438.267 323.597C439.556 318.786 441.936 314.337 445.22 310.593C448.505 306.849 452.607 303.911 457.21 302.006C461.812 300.102 466.791 299.282 471.761 299.611C476.731 299.939 481.558 301.407 485.87 303.9V303.9C489.629 306.081 492.913 308.991 495.53 312.46V312.46C499.794 318.085 502.098 324.952 502.09 332.01Z"
					  fill="black"
					/>
					<path
					  id="Vector_28"
					  opacity="0.1"
					  d="M461.65 311.42C459.972 312.142 458.354 312.995 456.81 313.97C455.779 314.533 454.893 315.327 454.22 316.29C453.886 316.775 453.703 317.347 453.692 317.936C453.681 318.525 453.844 319.103 454.16 319.6C454.95 320.68 456.47 320.84 457.81 320.92C459.217 321.099 460.647 320.956 461.99 320.5C462.897 320.051 463.722 319.453 464.43 318.73L467.22 316.2C468.22 315.32 469.22 314.11 468.83 312.87C468.599 312.427 468.262 312.049 467.848 311.769C467.434 311.49 466.957 311.318 466.46 311.27C464.055 310.801 461.561 311.24 459.46 312.5"
					  fill="black"
					/>
					<g id="Group_9" opacity="0.1">
					  <path
						id="Vector_29"
						opacity="0.1"
						d="M450 346.53C450.944 346.53 451.71 345.764 451.71 344.82C451.71 343.876 450.944 343.11 450 343.11C449.056 343.11 448.29 343.876 448.29 344.82C448.29 345.764 449.056 346.53 450 346.53Z"
						fill="black"
					  />
					</g>
					<g id="Group_10" opacity="0.1">
					  <path
						id="Vector_30"
						opacity="0.1"
						d="M484.72 340.26C488.177 340.26 490.98 337.457 490.98 334C490.98 330.543 488.177 327.74 484.72 327.74C481.263 327.74 478.46 330.543 478.46 334C478.46 337.457 481.263 340.26 484.72 340.26Z"
						fill="black"
					  />
					</g>
					<g id="Group_11" opacity="0.1">
					  <path
						id="Vector_31"
						opacity="0.1"
						d="M495.59 312.46C495.572 314.097 495.084 315.694 494.184 317.061C493.284 318.428 492.01 319.507 490.514 320.171C489.017 320.835 487.362 321.055 485.745 320.804C484.127 320.554 482.616 319.844 481.39 318.759C480.164 317.674 479.276 316.26 478.832 314.685C478.387 313.11 478.404 311.44 478.882 309.874C479.359 308.309 480.276 306.913 481.524 305.854C482.772 304.795 484.298 304.117 485.92 303.9V303.9C489.682 306.08 492.97 308.99 495.59 312.46Z"
						fill="black"
					  />
					</g>
					<g id="Group_12" opacity="0.1">
					  <path
						id="Vector_32"
						opacity="0.1"
						d="M496.17 350.69C493.379 354.664 489.729 357.958 485.491 360.33C481.254 362.701 476.537 364.089 471.69 364.39C471.69 363.94 471.63 363.49 471.63 363.03C471.633 360.182 472.426 357.391 473.922 354.968C475.417 352.544 477.556 350.583 480.101 349.304C482.645 348.025 485.494 347.477 488.332 347.722C491.169 347.966 493.882 348.994 496.17 350.69V350.69Z"
						fill="black"
					  />
					</g>
				  </g>
				  <path
					id="circle"
					opacity="0.2"
					d="M484.15 566.32C490.043 566.32 494.82 561.543 494.82 555.65C494.82 549.757 490.043 544.98 484.15 544.98C478.257 544.98 473.48 549.757 473.48 555.65C473.48 561.543 478.257 566.32 484.15 566.32Z"
					fill="black"
				  />
				  <path
					id="circle"
					opacity="0.2"
					d="M512.88 642.69C519.469 642.69 524.81 637.349 524.81 630.76C524.81 624.171 519.469 618.83 512.88 618.83C506.291 618.83 500.95 624.171 500.95 630.76C500.95 637.349 506.291 642.69 512.88 642.69Z"
					fill="black"
				  />
				  <path
					id="circle"
					opacity="0.2"
					d="M13.46 696.49C20.7391 696.49 26.64 690.589 26.64 683.31C26.64 676.031 20.7391 670.13 13.46 670.13C6.18088 670.13 0.279999 676.031 0.279999 683.31C0.279999 690.589 6.18088 696.49 13.46 696.49Z"
					fill="black"
				  />
				  <g id="circle">
					<path
					  id="Vector_33"
					  d="M53.76 496.58C51.8237 494.02 49.3964 491.871 46.62 490.26V490.26C43.4335 488.391 39.8583 487.282 36.1731 487.021C32.4879 486.759 28.7921 487.352 25.3736 488.753C21.9551 490.154 18.9062 492.326 16.4645 495.098C14.0227 497.871 12.254 501.17 11.2961 504.738C10.3382 508.306 10.217 512.047 10.9419 515.67C11.6669 519.292 13.2184 522.699 15.4755 525.624C17.7327 528.548 20.6347 530.912 23.9553 532.532C27.2759 534.151 30.9256 534.982 34.62 534.96C35.13 534.96 35.62 534.96 36.14 534.91C40.4487 534.62 44.5993 533.173 48.1543 530.721C51.7092 528.269 54.5368 524.903 56.3388 520.979C58.1408 517.054 58.8506 512.716 58.3932 508.422C57.9358 504.128 56.3282 500.037 53.74 496.58H53.76Z"
					  fill="url(#paint2_linear)"
					/>
					<path
					  id="Vector_34"
					  opacity="0.2"
					  d="M57.28 511.01C57.2788 516.766 55.0851 522.306 51.1451 526.502C47.2051 530.698 41.8146 533.236 36.07 533.6C35.6 533.6 35.07 533.6 34.64 533.6C31.1678 533.599 27.7423 532.8 24.6285 531.263C21.5146 529.727 18.7959 527.495 16.6824 524.74C14.569 521.985 13.1176 518.781 12.4403 515.376C11.7631 511.97 11.8782 508.455 12.7769 505.101C13.6755 501.747 15.3334 498.645 17.6226 496.034C19.9117 493.423 22.7707 491.374 25.9784 490.045C29.1861 488.715 32.6566 488.142 36.1214 488.368C39.5862 488.595 42.9525 489.615 45.96 491.35V491.35C48.586 492.878 50.8781 494.919 52.7 497.35C55.6813 501.279 57.2903 506.078 57.28 511.01V511.01Z"
					  fill="black"
					/>
					<path
					  id="Vector_35"
					  opacity="0.1"
					  d="M29.06 496.65C27.8906 497.148 26.7636 497.74 25.69 498.42C24.9743 498.819 24.3561 499.373 23.88 500.04C23.6578 500.384 23.5396 500.785 23.5396 501.195C23.5396 501.605 23.6578 502.006 23.88 502.35C24.2119 502.678 24.6107 502.929 25.0492 503.088C25.4877 503.247 25.9553 503.309 26.42 503.27C27.4027 503.397 28.4014 503.298 29.34 502.98C29.9758 502.666 30.554 502.247 31.05 501.74L32.99 499.98C33.67 499.36 34.41 498.52 34.11 497.66C33.957 497.345 33.7241 497.076 33.4345 496.88C33.145 496.683 32.809 496.566 32.46 496.54C30.7862 496.212 29.0503 496.519 27.59 497.4"
					  fill="black"
					/>
					<g id="Group_13" opacity="0.1">
					  <path
						id="Vector_36"
						opacity="0.1"
						d="M20.93 521.13C21.5872 521.13 22.12 520.597 22.12 519.94C22.12 519.283 21.5872 518.75 20.93 518.75C20.2728 518.75 19.74 519.283 19.74 519.94C19.74 520.597 20.2728 521.13 20.93 521.13Z"
						fill="black"
					  />
					</g>
					<g id="Group_14" opacity="0.1">
					  <path
						id="Vector_37"
						opacity="0.1"
						d="M45.16 516.77C47.5735 516.77 49.53 514.814 49.53 512.4C49.53 509.987 47.5735 508.03 45.16 508.03C42.7465 508.03 40.79 509.987 40.79 512.4C40.79 514.814 42.7465 516.77 45.16 516.77Z"
						fill="black"
					  />
					</g>
					<g id="Group_15" opacity="0.1">
					  <path
						id="Vector_38"
						opacity="0.1"
						d="M52.71 497.37C52.701 498.523 52.3601 499.648 51.7282 500.612C51.0962 501.576 50.2 502.338 49.1466 502.806C48.0933 503.274 46.9274 503.429 45.7884 503.252C44.6494 503.075 43.5855 502.573 42.724 501.807C41.8625 501.042 41.2398 500.044 40.9304 498.933C40.621 497.823 40.638 496.647 40.9793 495.546C41.3207 494.445 41.9719 493.466 42.8552 492.725C43.7385 491.985 44.8164 491.514 45.96 491.37C48.5896 492.897 50.8852 494.938 52.71 497.37V497.37Z"
						fill="black"
					  />
					</g>
					<g id="Group_16" opacity="0.1">
					  <path
						id="Vector_39"
						opacity="0.1"
						d="M53.15 524.04C51.2022 526.812 48.6558 529.111 45.6992 530.766C42.7426 532.421 39.4517 533.389 36.07 533.6C36.07 533.29 36.07 532.97 36.07 532.6C36.0718 530.613 36.6252 528.666 37.6685 526.975C38.7118 525.284 40.2041 523.916 41.979 523.024C43.7539 522.131 45.7419 521.749 47.7213 521.919C49.7007 522.09 51.594 522.807 53.19 523.99L53.15 524.04Z"
						fill="black"
					  />
					</g>
				  </g>
				</g>
				<defs>
				  <linearGradient
					id="paint0_linear"
					x1="162105"
					y1="469714"
					x2="162105"
					y2="28488.7"
					gradientUnits="userSpaceOnUse"
				  >
					<stop stop-color="#808080" stop-opacity="0.25" />
					<stop offset="0.54" stop-color="#808080" stop-opacity="0.12" />
					<stop offset="1" stop-color="#808080" stop-opacity="0.1" />
				  </linearGradient>
				  <linearGradient
					id="paint1_linear"
					x1="53015.2"
					y1="28395.5"
					x2="53015.2"
					y2="23681.3"
					gradientUnits="userSpaceOnUse"
				  >
					<stop stop-color="#808080" stop-opacity="0.25" />
					<stop offset="0.54" stop-color="#808080" stop-opacity="0.12" />
					<stop offset="1" stop-color="#808080" stop-opacity="0.1" />
				  </linearGradient>
				  <linearGradient
					id="paint2_linear"
					x1="15918.4"
					y1="28223.7"
					x2="15918.4"
					y2="25924.1"
					gradientUnits="userSpaceOnUse"
				  >
					<stop stop-color="#808080" stop-opacity="0.25" />
					<stop offset="0.54" stop-color="#808080" stop-opacity="0.12" />
					<stop offset="1" stop-color="#808080" stop-opacity="0.1" />
				  </linearGradient>
				</defs>
			  </svg>
			</div>
		
			<h3 class="title"></h3>
		</div>
		<div class="sidebar" id="side_nav">
			<div class="img-icon-nav header-box px-3 pt-3 pb-4 d-flex flex-column align-items-center text-center">
				<h1 class="fs-4">
				  <img class="icono" src="img/logo.jpeg" alt="">
				  <span class="text-white">CosmoClub</span>
				</h1>
				<button class="btn d-md-none d-block close-btn px-1 py-0 text-white"><i class="fa-solid fa-bars-staggered"></i></button>
			</div>
	
			<ul class="list-unstyled px-2">
				<li class=""><a href="/dashboard" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-home'></i> Dashboard</a></li>
				<li class=""><a href="/aprender" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-book' ></i> Aprender</a></li>
				<li class=""><a href="/galeria" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-images' ></i> Galeria</a></li>
				<li class=""><a href="/juegos" class="text-decoration-none px-3 py-2 d-block"><i class='bx bxs-invader' ></i> Juegos</a></li>
				<li class=""><a href="/cosmochat" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-chat' ></i> CosmoChat</a></li>
				<li class=""><a href="/wiki" class="text-decoration-none px-3 py-2 d-block"><i class='bx bxl-wikipedia' ></i> WikiCosmo</a></li>
				<li class="active"><a href="/foro" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-group'></i> Foro</a></li>
			</ul>
		</div>
		<div class="content">
			<div class="container w-75 mt-3">
				<div class="container w-75 bg-white border rounded-3 p-4">
					<form:form action="/crear-post" method="post" modelAttribute="newPost" enctype="multipart/form-data">
						
						<h1 class="titulo-bienvenidos text-center">BIENVENIDOS AL FORO</h1>
						<h3 class="text-center">Crea un Post y comparte con los demás!</h3>
						<form:input class="rounded w-100 mb-2 form-control" path="title" type ="text" placeholder="Título" />
						<form:errors path="title"/>
						<br>
						<form:textarea class="descripcion-post-form rounded w-100 form-control" path="content" rows="4" cols="50" placeholder="Descripción"/>
						<form:errors path="content"/>
						<br>
						<input type="hidden" id="user" name="user" value="${user.id}" />
						
						<div class="row">
							<div class="col d-flex justify-content-end align-items-center">
								<input class="btn-post w-25 h-75 border-0 rounded-pill" type="submit" value="Post">
							</div>
							<div class="col bg-white">
								<label for="file-upload" class="custom-file-upload">
	    							<i class="bi bi-image-fill btn" style="font-size: 2rem;"></i>
								</label>
								<input id="file-upload" class="file-input" type="file" name="post_img" />
							</div>
						</div>
					</form:form>
				</div>
				
				<hr>
				
                
                  <c:forEach items="${allPosts}" var="post">
                     <c:set var="postId" value="${post.id}" />
                     <c:set var="numberCommentsDash" value="${commentCounts[postId]}" />
                    <div class="row bg-white g-0 border rounded flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                      <div class="col p-4 d-flex flex-column position-static">
                        <h5 class="mb-0">
                          <strong class="d-inline-block mb-2 me-3">
                            <img class="img-perfil rounded-circle-border-nav rounded-circle" src="<c:url value='${post.user.user_img}'/>" alt="">
                          </strong>${post.user.name} ${post.user.last_name}
                          
							<p class="foro-post-timeago d-inline-block">&#8226 ${post.timeAgo}</p>
                        </h5>
                        
                        <h3>${post.title}</h3>
                        <p class="card-text mb-auto">
                          <c:set var="limitedContent" value="${fn:substring(post.content, 0, 350)}" />
                          ${limitedContent}...
                        </p>
                        <a href="/post/${post.id}" class="icon-link gap-1 icon-link-hover stretched-link">
                          Continuar leyendo...
                        </a>
                        
                        <div class="mb-1 text-body-secondary mt-3">
                        	<c:choose>
						        <c:when test="${numberCommentsDash == 0}">
						        	Sé la primera persona en comentar! <i class="bi bi-chat-dots-fill"></i>
						        </c:when>
						        <c:when test="${numberCommentsDash == 1}">
						        	1 persona ha comentado <i class="bi bi-chat-dots-fill"></i>
						        </c:when>
						        <c:otherwise>
						       		${numberCommentsDash} personas han comentado <i class="bi bi-chat-dots-fill"></i>
						    	</c:otherwise>
							</c:choose>
                        </div>
                        
                      </div>
                      <div class="col-auto d-none d-lg-block">
                        	<!-- AQUI VA LA IMAGEN DEL FORO -->
                          	<c:forEach var="imagen" items="${post.images}">
								<img class="bd-placeholder-img" src="/img${imagen.post_images}" alt="" width="300" height="250">
							</c:forEach>
                      </div>
                    </div>

                  </c:forEach>
             	
				
				
			</div>
		</div>
		
	</div>
	
	
	
	

	<script src="../js/preloader.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
</body>

</html>