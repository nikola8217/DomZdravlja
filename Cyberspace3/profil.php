<?php include "includes/header.php"; ?>

<style type="text/css">
	tr {
		border: 1px solid black;
		color:#cccccc;
	}
	td {
		border: 1px solid black;
		color:#cccccc;
	}
</style>

<div class="row">
	<?php


	$result = vratiKorisnike();



	if ($result->num_rows > 0) {
          // output data of each row
		while($row = $result->fetch_assoc()) {

			if ($row['korime']==$_SESSION['podaci']['korime']) { ?>

				<div class="col-md-12" style="margin-bottom: 30px;">
					<table class="table" style="background: rgba(255,255,255,0.1); border-radius: 6px; margin-bottom: 20px; 
	box-shadow: 0 5px 35px rgba(0,0,0,0.2); width: 33.33%; ">
						<th colspan="2" style="border:none; border-top: 1px solid black; border-bottom: 1px solid black; text-align: center;">Vas Profil</th>
						<tr>
							<td><b>Id:</b></td>
							<td><?php echo $row['id']; ?></td>
						</tr>
						<tr>
							<td><b>Ime:</b></td>
							<td><?php echo $row['ime']; ?></td>
						</tr>
						<tr>
							<td><b>Prezime:</b></td>
							<td><?php echo $row['prezime']; ?></td>
						</tr>
						<tr>
							<td><b>Email:</b></td>
							<td><?php echo $row['email']; ?></td>
						</tr>
						<tr>
							<td><b>Korisnicko ime:</b></td>
							<td><?php echo $row['korime']; ?></td>
						</tr>
						<tr>
							<td><b>Status:</b></td>
							<td><?php echo $row['status']; ?></td>
						</tr>
					</table>
				</div>

				<?php




			}
		} }
		else {
			echo " ";
		}


		?>

	</div>

	<div class="row">
		<h3 style="text-align: center; color:#cccccc;">Vase narudzbine</h3>

		<?php


		$result = vratiNarudzbenice(); ?>



		<?php

		if ($result->num_rows > 0) {
          // output data of each row
			while($row = $result->fetch_assoc()) {

				if ($row['korime']==$_SESSION['podaci']['korime']) { ?>



					<div class="col-sm-6 col-md-4" >
						<div class="thumbnail" style="background-color: #f6f6f6">
							<?php 

							echo "Korinsik " .$row['korime']. " je porucio " .$row['ukupnoProizvoda'].
							" proizvoda.<br>";
							echo "Adresa - " .$row['ulica']. " " .$row['broj']. " " .$row['grad']. ".<br>";
							echo "Ukupna cena - " .$row['ukupnaCena']. ",00 dinara.<br>";
							echo "Nacin placanja - " .$row['placanje'] . ".<hr>";
							echo '<form method="post" action="proizvod.php" style="margin-bottom: 5px;">
							<button  type="submit" class="btn btn-danger" name="otkazi" value="'.$row["id"].'">Otkazi porudzbinu</button></form>';




							?>
						</div>
					</div>

					<?php

				}
			} }
			else {
				echo " ";
			}




			?>

		</div>










		<?php include "includes/footer.php"; ?>