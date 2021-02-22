<?php include "includes/header.php"; ?>


<div class="row">
	
	<?php


	if(isset($_POST["prikazi"])){
		$id = $_POST["prikazi"];
		$row=vratiProizvod($id);
	}

	if (isset($_POST['add'])) {
		$korime = $_POST['korime'];
		$proizvod = $_POST['marka'];
		$kolicina = $_POST['kolicina'];
		$cena = $_POST['cena'];
		$slika = $_POST['slika'];
		$ukupnaCena = intval($cena)*intval($kolicina);
		$odg=dodajUKorpu($korime,$proizvod,$kolicina,$slika,$cena,$ukupnaCena);
		if($odg == 1) {
			header("location: proizvodi.php");
		}
		echo $odg;
	}



	?>



	<div class="col-md-6" style="padding-top: 65px;">
		<img style="border: 1px solid grey; padding: 15px; float: right;" width="300" height="300" src="<?php echo $row['slika1']; ?>">
	</div>


	<div class="col-md-6" style="color:#cccccc;">
		<div class="caption" style="padding: 40px;">
			<h2><?php echo $row['marka']; ?></h2>
			<p><b>Tip: </b><?php echo $row['tip']; ?></p>
			
			<p><b>Opis: </b><?php echo $row['opis']; ?></p>
			<h3 style="margin-bottom: 70px;"><b>Cena: </b><?php echo $row['cena'] . ",00 RSD"; ?></h3>
			<?php echo '<form method="post" action="proizvod.php" style="margin-bottom:10px;">
			<input type="hidden" name="korime" value="'.$_SESSION["podaci"]["korime"].'">
			<input type="hidden" name="kolicina" value="1">
			<input type="hidden" name="slika" value="' .$row["slika1"] .'">
			<input type="hidden" name="marka" value="' .$row["marka"] .'">
			<input type="hidden" name="cena" value="' .$row["cena"] .'">
			<button type="submit" class="btn btn-success" name="add" value="'.$row["id"].'">Dodaj u korpu</button></form>'; ?>
			<p style="padding-left: 40px;"><a href="proizvodi.php" class="btn btn-info" role="button">Vrati se nazad</a></p>
		</div>
	</div>












</div>



















<?php include "includes/footer.php"; ?>