<?php include "includes/header.php"; ?>


<div class="container-fluid bg-grey" style="background: rgba(255,255,255,0.1); border-radius: 6px; box-shadow: 0 5px 35px rgba(0,0,0,0.2); margin-bottom: 30px; color: white;">
	<h2 class="text-center">Kontaktirajte nas</h2>
	<div class="row" >
		<div class="col-sm-5">
			<p>Kontaktirajte nas, a mi cemo vam odgovoriti u sto brzem roku.</p>
			<p><span class="glyphicon glyphicon-map-marker"></span> Jovana Serbanovica 6, 12000 Pozarevac</p>
			<p><span class="glyphicon glyphicon-phone"></span> +381 12 55 75 998</p>
			<p><span class="glyphicon glyphicon-envelope"></span> cyberspace@gmail.com</p>
		</div>
		<div class="col-sm-7">
			<div class="row">
				<div class="col-sm-6 form-group">
					<input class="form-control" id="name" name="name" placeholder="Unesite vase ime" type="text" required>
				</div>
				<div class="col-sm-6 form-group">
					<input class="form-control" id="email" name="email" placeholder="Unesite vas email" type="email" required>
				</div>
			</div>
			<textarea class="form-control" id="comments" name="comments" placeholder="" rows="5"></textarea><br>
			<div class="row">
				<div class="col-sm-12 form-group">
					<button class="btn btn-success pull-right" type="submit">Posalji</button>
				</div>
			</div>
		</div>
	</div>
</div>






		<?php include "includes/footer.php"; ?>