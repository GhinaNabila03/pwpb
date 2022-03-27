<?php include 'layout/navbar.php'; ?>
<?php 

$data = query("SELECT * FROM produk");

?>

<div class="slideshow-container">

  <div class="mySlides fade">
    <div class="slide-1"><h3></h3></div>
  </div>

  <div class="mySlides fade">
    <div class="slide-2"><h3></h3></div>
  </div>

  <div class="mySlides fade">
    <div class="slide-3"><h3></h3></div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<div class="container">
    <div class="text-produk">
        <h2>Produk Terbaru</h2>
    </div>

    <div class="wrapper-produk">
        <?php foreach($data as $produk) : ?>
        <div class="produk">
            <a href="detail.php?id=<?= $produk["id_produk"]; ?>">
                <img src="foto/<?= $produk["foto_produk"]; ?>">
                <h2><?= $produk["nama_produk"]; ?></h2>
                <p>Rp <?= number_format($produk["harga_produk"]); ?></p>
            </a>
        </div>
        <?php endforeach; ?>
    </div>
</div>
<script>
    var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}
  slides[slideIndex-1].style.display = "block";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>