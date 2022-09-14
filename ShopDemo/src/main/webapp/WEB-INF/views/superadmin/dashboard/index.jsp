<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:template_superadmin title="Dashboard">
	<jsp:attribute name="content">
		<div id="main-content">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h2>Dashboard</h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ul>
                    <a href="javascript:void(0);" class="btn btn-sm btn-primary" title="">Create New</a>
                </div>
            </div>
        </div>

        <div class="container-fluid">

            <div class="row clearfix">
                <div class="col-12">
                    <div class="card top_report">
                        <div class="row clearfix">
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x fa-dollar text-col-blue"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>Earnings</h6>
                                            <span class="font700">$22,500</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-blue mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="100"></div>
                                    </div>
                                    <small class="text-muted">19% compared to last week</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x fa-bar-chart-o text-col-green"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>Sales</h6>
                                            <span class="font700">$500</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-green mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="28"></div>
                                    </div>
                                    <small class="text-muted">19% compared to last week</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x fa-shopping-cart text-col-red"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>Orders</h6>
                                            <span class="font700">215</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-red mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="41"></div>
                                    </div>
                                    <small class="text-muted">19% compared to last week</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x fa-thumbs-up text-col-yellow"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>Likes</h6>
                                            <span class="font700">21,215</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-yellow mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="75"></div>
                                    </div>
                                    <small class="text-muted">19% compared to last week</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-8 col-md-12">
                    <div class="card">
                        <div class="header bline">
                            <h2>Cryptocurrency Overview</h2>
                            <ul class="header-dropdown dropdown dropdown-animated scale-left">                                
                                <li><a class="btn btn-default btn-sm" href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Monthly">Monthly</a></li>
                                <li><a class="btn btn-outline-primary btn-sm" href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Yearly">Yearly</a></li>
                            </ul>
                        </div>
                        <div class="body">
                            <div id="User_Statistics" class="mt-2" style="height: 290px"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Top Products</h2>
                            <ul class="header-dropdown dropdown dropdown-animated scale-left">
                                <li> <a href="javascript:void(0);" data-toggle="cardloading" data-loading-effect="pulse"><i class="icon-refresh"></i></a></li>
                                <li><a href="javascript:void(0);" class="full-screen"><i class="icon-size-fullscreen"></i></a></li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another Action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div id="chart-top-products" class="chartist"></div>
                        </div>
                    </div>                    
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>Active Order</h2>
                            <ul class="header-dropdown dropdown dropdown-animated scale-left">
                                <li> <a href="javascript:void(0);" data-toggle="cardloading" data-loading-effect="pulse"><i class="icon-refresh"></i></a></li>
                                <li><a href="javascript:void(0);" class="full-screen"><i class="icon-size-fullscreen"></i></a></li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another Action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-hover js-basic-example dataTable table-custom mb-0">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Date</th>
                                            <th>Type</th>
                                            <th>Amount BTC</th>
                                            <th>BTC Remaining</th>
                                            <th>Price</th>
                                            <th>USD</th>
                                            <th>Fee (%)</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>28-July-2018 06:51:51</td>
                                            <td>Buy</td>
                                            <td>
                                                0.58647</td>
                                            <td>
                                                0.58647</td>
                                            <td>11900.12</td>
                                            <td>$ 1597.78</td>
                                            <td>0.023</td>
                                            <td>
                                                <button class="btn btn-sm round btn-outline-success">Accept</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>28-July-2018 06:50:50</td>
                                            <td>Sell</td>
                                            <td>
                                                1.38647</td>
                                            <td>
                                                0.38647</td>
                                            <td>11905.09</td>
                                            <td>$ 2496.36</td>
                                            <td>0.017</td>
                                            <td>
                                                    <button class="btn btn-sm round btn-outline-success">Accept</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>28-July-2018 06:49:51</td>
                                            <td >Buy</td>
                                            <td>
                                                0.45879</td>
                                            <td>
                                                0.45879</td>
                                            <td>11901.85</td>
                                            <td>$ 3165.44</td>
                                            <td>0.013</td>
                                            <td>
                                                <button class="btn btn-sm round btn-outline-success"> Accept</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>28-July-2018 06:51:51</td>
                                            <td>Buy</td>
                                            <td>
                                                0.89877</td>
                                            <td>
                                                0.89877</td>
                                            <td>11899.28</td>
                                            <td>$ 25830.6</td>
                                            <td>0.011</td>
                                            <td>
                                                    <button class="btn btn-sm round btn-outline-success">Accept</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>28-July-2018 06:51:51</td>
                                            <td>Sell</td>
                                            <td>
                                                0.45712</td>
                                            <td>
                                                0.45712</td>
                                            <td>11908.19</td>
                                            <td>$ 2586.34</td>
                                            <td>0.024</td>
                                            <td>
                                                    <button class="btn btn-sm round btn-outline-danger"> Cancel</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>28-July-2018 06:51:51</td>
                                            <td>Buy</td>
                                            <td>
                                                0.58647</td>
                                            <td>
                                                0.58647</td>
                                            <td>11900.12</td>
                                            <td>$ 1597.78</td>
                                            <td>0.023</td>
                                            <td>
                                                <button class="btn btn-sm round btn-outline-success">Accept</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
        
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-4 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>My Wallets</h2>
                            <ul class="header-dropdown dropdown dropdown-animated scale-left">
                                <li> <a href="javascript:void(0);" data-toggle="cardloading" data-loading-effect="pulse"><i class="icon-refresh"></i></a></li>
                                <li><a href="javascript:void(0);" class="full-screen"><i class="icon-size-fullscreen"></i></a></li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another Action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-5">
                                    <div class="sparkline-pie">6,4,8</div>
                                </div>
                                <div class="col-7">
                                    <h6 class="font700">$7,025.72</h6>
                                    <span>Wallet Ballance <span class="float-right">8920$</span></span><br>
                                    <span>Travels <span class="float-right">920$</span></span><br>
                                    <span>Foods & Drinks <span class="float-right">120$</span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="header">
                            <h2>ToDo List <small>This Month task list</small></h2>
                        </div>
                        <div class="body todo_list">
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <label class="fancy-checkbox mb-0">
                                        <input type="checkbox" name="checkbox" checked="">
                                        <span>Report Panel Usag</span>
                                    </label>
                                    <hr>
                                </li>
                                <li>
                                    <label class="fancy-checkbox mb-0">
                                        <input type="checkbox" name="checkbox">
                                        <span>Report Panel Usag</span>
                                    </label>
                                    <hr>
                                </li>
                                <li>
                                    <label class="fancy-checkbox mb-0">
                                        <input type="checkbox" name="checkbox">
                                        <span>New logo design for InfiniO</span>
                                    </label>
                                    <hr>
                                </li>
                                <li>
                                    <label class="fancy-checkbox mb-0">
                                        <input type="checkbox" name="checkbox">
                                        <span>Design PSD files for InfiniO</span>
                                    </label>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Twitter Feed</h2>
                        </div>
                        <div class="body">
                            <form>
                                <div class="form-group">
                                    <textarea rows="2" class="form-control no-resize" placeholder="Enter here for tweet..."></textarea>
                                </div>
                                <button class="btn btn-primary">Tweet</button>
                                <a href="javascript:void(0);" class="float-right">13K users active</a>
                            </form>
                            <hr>
                            <ul class="right_chat list-unstyled mb-0">
                                <li class="offline">
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object " src="${pageContext.request.contextPath}/resources/superadmin/images/xs/avatar2.jpg" alt="">
                                            <div class="media-body">
                                                <span class="name">@Isabella <small class="float-right">1 hours ago</small></span>
                                                <span class="message">Contrary to popular belief, Lorem Ipsum is not simply random text</span>
                                                <span class="badge badge-outline status"></span>
                                            </div>
                                        </div>
                                    </a>                            
                                </li>
                                <li class="offline">
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object " src="${pageContext.request.contextPath}/resources/superadmin/images/xs/avatar1.jpg" alt="">
                                            <div class="media-body">
                                                <span class="name">@Folisise Chosielie <small class="float-right">45 hours ago</small></span>
                                                <span class="message">There are many variations of passages of Lorem Ipsum available, but the majority</span>
                                                <span class="badge badge-outline status"></span>
                                            </div>
                                        </div>
                                    </a>                            
                                </li>
                                <li class="online">
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object " src="${pageContext.request.contextPath}/resources/superadmin/images/xs/avatar3.jpg" alt="">
                                            <div class="media-body">
                                                <span class="name">@Alexander <small class="float-right">1 day ago</small></span>
                                                <span class="message">It is a long established fact that a reader will be distracted</span>
                                                <span class="badge badge-outline status"></span>
                                            </div>
                                        </div>
                                    </a>                            
                                </li>
                                <li class="offline">
                                    <a href="javascript:void(0);">
                                        <div class="media mb-0">
                                            <img class="media-object " src="${pageContext.request.contextPath}/resources/superadmin/images/xs/avatar2.jpg" alt="">
                                            <div class="media-body">
                                                <span class="name">@Isabella <small class="float-right">1 hours ago</small></span>
                                                <span class="message">Contrary to popular belief, Lorem Ipsum is not simply random text</span>
                                                <span class="badge badge-outline status"></span>
                                            </div>
                                        </div>
                                    </a>                            
                                </li>
                            </ul>                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Social Counter</h2>
                        </div>
                        <div class="body social_counter">
                            <ul class=" list-unstyled basic-list">
                                <li><i class="fa fa-facebook-square m-r-5"></i> FaceBook <span class="badge badge-primary">16,785</span></li>
                                <li><i class="fa fa-twitter-square m-r-5"></i> Twitter <span class="badge-purple badge">2,365</span></li>
                                <li><i class="fa fa-linkedin-square m-r-5"></i> Linkedin<span class="badge-success badge">9,021</span></li>
                                <li><i class="fa fa-google-plus-square m-r-5"></i> Google Plus<span class="badge-info badge">725</span></li>
                                <li><i class="fa fa-behance-square m-r-5"></i> Behance<span class="badge-info badge">1,725</span></li>
                                <li><i class="fa fa-dribbble m-r-5"></i> Dribbble<span class="badge-info badge">11,725</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card">
                        <div class="header">
                            <h2>Email Newsletter</h2>
                        </div>
                        <div class="body widget newsletter">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Enter Email">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="icon-paper-plane"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
	</jsp:attribute>
</mt:template_superadmin>

