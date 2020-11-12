<?php include("path.php"); ?>
<?php include(ROOT_PATH . '/app/controllers/posts.php');

if (isset($_GET['id'])) {
  $post = selectOne('posts', ['id' => $_GET['id']]);
}
$topics = selectAll('topics');
$posts = selectAll('posts', ['published' => 1]);


?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;700&family=Josefin+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Raleway:wght@400;600;700&display=swap" rel="stylesheet"> 

  <!-- Custom Styling -->
  <link rel="stylesheet" href="assets/css/style.css">

  <title><?php echo $post['title']; ?> | Holiday Inspirations </title>
</head>

<body>
  <!-- Facebook Page Plugin SDK -->
  <div id="fb-root"></div>
  <script async defer crossorigin="anonymous"
    src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2&appId=285071545181837&autoLogAppEvents=1">
  </script>

  <?php include(ROOT_PATH . "/app/includes/header.php"); ?>

  <!-- Page Wrapper -->
  <div class="page-wrapper">

    <!-- Content -->
    <div class="content clearfix">

      <!-- Main Content Wrapper -->
      <div class="main-content-wrapper">
        <div class="main-content single">
          <h1 class="post-title"><?php echo $post['title']; ?></h1>
          <img src="<?php echo BASE_URL . '/assets/images/' . $post['image']; ?>" alt="" class="post-image">
          <div class="post-content">
            <?php echo html_entity_decode($post['body']); ?>
          </div>
              <i class="far fa-calendar"> <?php echo date('F j, Y', strtotime($post['created_at'])); ?></i>

        </div>
      </div>
      <!-- // Main Content -->

      <!-- Sidebar -->
      <div class="sidebar single">
                <div class="fb-page" data-href="https://www.facebook.com/wechoosetotravel" data-tabs="" data-width="" data-height="" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
                <blockquote cite="https://www.facebook.com/wechoosetotravel" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/wechoosetotravel">𝘛𝘳𝘢𝘷𝘦𝘭</a></blockquote>
                </div>


        <div class="section popular">
          <h2 class="section-title" id="post-slider"><a href="#post-slider">Popular</a></h2>

        <?php foreach ($posts as $post): ?>
          <div class="post">
            <img src="<?php echo BASE_URL . '/assets/images/' . $post['image']; ?>" alt="" class="slider-image">
            <div class="post-info">
              <h4><a href="single.php?id=<?php echo $post['id']; ?>"><?php echo htmlspecialchars($post['title']); ?></a></h4>
              <i class="far fa-calendar"> <?php echo date('F j, Y', strtotime($post['created_at'])); ?></i>
            </div>
          </div>
        <?php endforeach; ?>

        </div>

        <div class="section topics">
          <h2 class="section-title" id="topics"><a href="#topics">Topics</a></h2>
          <ul>
            <?php foreach ($topics as $topic): ?>
              <li><a href="<?php echo BASE_URL . '/index.php?t_id=' . $topic['id'] . '&name=' . $topic['name'] ?>"><?php echo $topic['name']; ?></a></li>
            <?php endforeach; ?>

          </ul>
        </div>
      </div>
      <!-- // Sidebar -->

    </div>
    <!-- // Content -->

  </div>
  <!-- // Page Wrapper -->

  <?php include(ROOT_PATH . "/app/includes/footer.php"); ?>


  <!-- JQuery -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- Slick Carousel -->
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

  <!-- Custom Script -->
  <script src="assets/js/scripts.js"></script>

</body>

</html>