
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Uyen Nguyen | WEB APP DEVELOPER ∙ FULL STACK PHP</title>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />

	
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css" /> 
	<link type="text/css" rel="stylesheet" href="css/global.css" /> 

	<script type="text/javascript" src="jquery/jquery.min.js"></script>
	<script type="text/javascript" src="jquery/bootstrap.min.js"></script> 

	<style type="text/css">
		.header {color: #ffffff; background-color: #1b75ba;}
		.media-object {border: 5px solid #1b75ba;}
		.footer {color: #ffffff; background-color: #1b75ba;}
		.btn-submit {color: #ffffff; background-color: #1b75ba;}
		.btn-submit:hover {color: #ffffff; background-color: #1b75ba;}
		input { height: 50px !important; border-radius: 25px !important; padding: 6px 25px !important; }
		textarea { border-radius: 25px !important; padding: 15px 25px !important; }
		h1 { font-size: 28px !important; margin: 0 0 20px 6px !important; }
	</style>
</head>
<body role="document">

	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-10 col-sm-offset-1 col-lg-8 col-lg-offset-2">

				<div class="header">
					<div class="row">
						<div class="col-xs-12 text-center">
							<div style="font-size:26px;">Uyen Nguyen</div>
							<div style="font-size:12px;">804 - 503 - 8321 / uyen.ndc@mail.com</div>
						</div>
					</div>
				</div>

				<div class="content">					
					<div class="row" style="margin-top: 30px; margin-bottom: 30px;">

						<div class="col-xs-12">
							<div id="accordion">
								<div class="card">
									<div class="card-header" id="card1">
										<h5 class="mb-0">
											<button class="btn btn-link" data-toggle="collapse" data-target="#c1" aria-expanded="true" aria-controls="c1">
												Possible Assumptions
											</button>
										</h5>
									</div>

									<div id="c1" class="collapse" aria-labelledby="" data-parent="#accordion">
										<div class="card-body">
											<ul class="list-group">
										  		<li class="list-group-item">N/A</li>
											</ul>
										</div>
									</div>
								</div>
								
								<div class="card">
									<div class="card-header" id="card2">
										<h5 class="mb-0">
											<button class="btn btn-link" data-toggle="collapse" data-target="#c2" aria-expanded="true" aria-controls="c2">
												Note
											</button>
										</h5>
									</div>

									<div id="c2" class="collapse" aria-labelledby="" data-parent="#accordion">
										<div class="card-body">
											<ul class="list-group">
										  		<li class="list-group-item">
										  			1. In the Agent Detail Page: the requirement is "Retrieve <b>all</b> Agent Details by agent's INT ID", since the agent's ID is a unique id/number, so the returned value can be 1 row (if found) or 0 row (not found) only.
										  			<br><br>
										  			2. In the Agent's Customer List View Page, Ability to Add New Customer endpoint should given an Agent' ID as a param to be able to create new customer.
										  			<br><br>
										  			3. In the Agent's Customer List View Page, Ability to Delete Existing Customer endpoint should given a customer id as a param to be able to delete customer.
										  			<br><br>
										  			4. In the Agent's Customer Detail Page, Return all customer data from our system endpoint, a page number, pagesize, a list of returned columns will have to be specified, otherwise the default value will be use.
										  			<br>Page = 0, 1, 2, 3 ... 
										  			<br>pagesize = [10, 50]
										  			<br>columns = _id, company, guid
										  			<br><br>
										  			5. In the Agent's Customer Detail Page, Provide ability to Update Customer Information endpoint should given a customer's ID as a param to be able to update.
										  		</li>
											</ul>

										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-header" id="card3">
										<h5 class="mb-0">
											<button class="btn btn-link" data-toggle="collapse" data-target="#c3" aria-expanded="true" aria-controls="c3">
												Install Instruction
											</button>
										</h5>
									</div>

									<div id="c3" class="collapse" aria-labelledby="" data-parent="#accordion">
										<div class="card-body">
											<ul class="list-group">
										  		
										  		<li class="list-group-item">
											  		1. Install apache on your local window computer, (I use XAMPP)
											  	</li><li class="list-group-item">
													2. Test your localhost url from your browser.
												</li><li class="list-group-item">
													3. Copy my "something" folder into your htdocs folder
												</li><li class="list-group-item">
													4. Create a databse from test.sql, it contains database structure and data	
												</li><li class="list-group-item">
													5. change app.ini which is contains database config infos with you user/pass/host/dbname
												</li> 
											</ul>
										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-header" id="card3">
										<h5 class="mb-0">
											<button class="btn btn-link" data-toggle="collapse" data-target="#c4" aria-expanded="true" aria-controls="c4">
												API URL(s)
											</button>
										</h5>
									</div>

									<div id="c4" class="collapse" aria-labelledby="" data-parent="#accordion">
										<div class="card-body">
											<ul class="list-group">
										  		<li class="list-group-item">Agent List Page
										  			<ol>Return List of all Agents
										  				<ul>
										  					<li>Method: GET</li>
										  					<li>Params: /something/apis/agents.php?fields={"method":"list","page":0}</li>
										  					<li>default pagesize = 10</li>
										  				</ul>
										  			</ol>
										  			<ol>Ability to Add New Agent
										  				<ul>
										  					<li>Method: POST</li>
										  					<li>Params: /something/apis/agents.php?fields={"method":"add","name":"uyen","address":"123","something":"something value"}</li>
										  				</ul>
										  			</ol>
										  		</li>
 

										  		<li class="list-group-item">Agent Detail Page
										  			<ol>Retrieve all Agent Details by agent's INT ID
											  			<ul>
											  					<li>Method: GET</li>
											  					<li>Params: /something/apis/agentdetails.php?fields={"method":"getAgentByID","id":0}</li>
											  				</ul>
										  			</ol>
										  			<ol>Update Any/All Fields by Agent's INT ID
										  				<ul>
										  					<li>Method: POST</li>
										  					<li>Params: /something/apis/agentdetails.php?fields={"method":"updateAgentByID","id":0,"name":"uyen"}</li>
										  				</ul>
										  			</ol>
										  		</li>
										  		<li class="list-group-item">Agent's Customer List View Page
										  			<ol>List all customers associated with a given Agent's INT ID
										  				<ul>
										  					<li>Method: GET</li>
										  					<li>Params: /something/apis/agentcustomer.php?fields={"method":"getCustomerByAgentID","id":101}</li>
										  				</ul> 

										  			</ol>

										  			<ol>Ability to Add New Customer
										  				<ul>
										  					<li>Method: POST</li>
										  					<li>Params: /something/apis/agentcustomer.php?fields={"method":"addCustomer","id":101 , "name"=> "my new customer"}</li>
										  				</ul>
										  			</ol>
										  			<ol>Ability to Delete Existing Customer
										  				<ul>
										  					<li>Method: POST</li>
										  					<li>Params: /something/apis/agentcustomer.php?fields={"method":"removeCustomer","id":101 }</li>
										  				</ul>
										  			</ol>
										  		</li>
										  		<li class="list-group-item">Agent's Customer Detail Page
										  			<ol>Return all customer data from our system.
										  				<ul>
										  					<li>Method: GET</li>
										  					<li>Params: /something/apis/agentcustomerdetail.php?fields={"method":"listCustomer","page":0, "pagesize":10,"columns":'_id,company'}</li>
										  				</ul>
										  			</ol>
										  			<ol>Provide ability to Update Customer Information
										  				<ul>
										  					<li>Method: POST</li>
										  					<li>Params: /something/apis/agentcustomerdetail.php?fields={"method":"updateCustomerById","id":0,"company":"uyen"}</li>
										  				</ul>
										  			</ol>
										  		</li>
											</ul>
										</div>
									</div>
								</div>

								 
							</div>
						</div>	


					</div>
				</div>

			</div>
		</div>
	</div> 

</body> 
</html> 
