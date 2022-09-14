<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<mt:template_superadmin title="User">
	<jsp:attribute name="content">
		<div id="main-content">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h2>Product add </h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item">Product Management</li>
                        <li class="breadcrumb-item active">Add</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container-fluid">
        	<!-- Form product biding -->
        	<s:form id="basic-form" modelAttribute="product" action="${pageContext.request.contextPath}/superadmin/product/edit" method="post" enctype="multipart/form-data">
        		 <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2 class="font-weight-bold">Basic information</h2>
                            </div>
                            <div class="body">                        
                                <div class="form-group">
                                    <label>Product name</label>
                                    <s:input path="name" cssClass="form-control"/>                                 
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <s:textarea path="content" cssClass="form-control" rows="5" cols="30"/>                                 
                                </div>
                                <div class="form-group">
                                    <label>Image Product</label>
                                    <div class="input-group mb-3 ">        
                                        <div class="custom-file">
                                            <input type="file" name="files" class="custom-file-input" multiple id="inputGroupFile01" accept="image/gif, image/jpg, image/jpeg, image/png">
                                            <label class="custom-file-label border border-info" for="inputGroupFile01">Choose Image</label>
                                        </div>
                                    </div>
                                    <div class="mb-3 row ">
                                    	<c:forEach items="${product.images }" var="image">
                                    		<div class="col-lg-2 col-md-6 col-sm-12 m-b-30"><a href="#"><img  style="max-height: 190px" he class="img-fluid img-thumbnail" src="${pageContext.request.contextPath}/assets/uploads/products/${image.name}" alt=""></a></div>
                                    	</c:forEach>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <label class="input-group-text" for="inputGroupSelect01">Options</label>
                                        </div>                               
                                        <select class="custom-select" id="inputGroupSelect01" name="categoryId" >
                                        	<c:choose>
                                           		<c:when test="${not empty product.category}">
                                           			<option value="0" selected>${product.category.name }</option>
                                           		</c:when>
                                           	</c:choose>
                                            <c:forEach items="${categories }" var="category">
                                            	<option value="${category.categoryId }">${category.name }</option>
                                            </c:forEach>
                                        </select>                                    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2 class="font-weight-bold">Details</h2>
                            </div>
                            <div class="body">                          
                                <div class="form-group">
                                    <label>Brand</label>
                                    <s:input path="brand" cssClass="form-control"/>                                   
                                </div>
                               
                                <div class="form-group">
                                    <label>Address</label>
                                    <s:input path="address" cssClass="form-control"/>                                      
                                </div>
                                <div class="form-group">
                                    <label>Made-In</label>
                                    <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <label class="input-group-text" for="inputGroupSelect01">Country</label>
                                            </div>
                                            <s:select path="madeIn" cssClass="custom-select" id="inputGroupSelect01">
                                           		<s:option value="Afghanistan">USA</s:option>                                          
                                                <s:option value="Afghanistan">Afghanistan</s:option>
                                                <s:option value="Albania">Albania</s:option>
                                                <s:option value="Algeria">Algeria</s:option>
                                                <s:option value="American Samoa">American Samoa</s:option>
                                                <s:option value="Andorra">Andorra</s:option>
                                                <s:option value="Angola">Angola</s:option>
                                                <s:option value="Anguilla">Anguilla</s:option>
                                                <s:option value="Antartica">Antarctica</s:option>
                                                <s:option value="Antigua and Barbuda">Antigua and Barbuda</s:option>
                                                <s:option value="Argentina">Argentina</s:option>
                                                <s:option value="Armenia">Armenia</s:option>
                                                <s:option value="Aruba">Aruba</s:option>
                                                <s:option value="Australia">Australia</s:option>
                                                <s:option value="Austria">Austria</s:option>
                                                <s:option value="Azerbaijan">Azerbaijan</s:option>
                                                <s:option value="Bahamas">Bahamas</s:option>
                                                <s:option value="Bahrain">Bahrain</s:option>
                                                <s:option value="Bangladesh">Bangladesh</s:option>
                                                <s:option value="Barbados">Barbados</s:option>
                                                <s:option value="Belarus">Belarus</s:option>
                                                <s:option value="Belgium">Belgium</s:option>
                                                <s:option value="Belize">Belize</s:option>
                                                <s:option value="Benin">Benin</s:option>
                                                <s:option value="Bermuda">Bermuda</s:option>
                                                <s:option value="Bhutan">Bhutan</s:option>
                                                <s:option value="Bolivia">Bolivia</s:option>
                                                <s:option value="Bosnia and Herzegowina">Bosnia and Herzegowina</s:option>
                                                <s:option value="Botswana">Botswana</s:option>
                                                <s:option value="Bouvet Island">Bouvet Island</s:option>
                                                <s:option value="Brazil">Brazil</s:option>
                                                <s:option value="British Indian Ocean Territory">British Indian Ocean Territory</s:option>
                                                <s:option value="Brunei Darussalam">Brunei Darussalam</s:option>
                                                <s:option value="Bulgaria">Bulgaria</s:option>
                                                <s:option value="Burkina Faso">Burkina Faso</s:option>
                                                <s:option value="Burundi">Burundi</s:option>
                                                <s:option value="Cambodia">Cambodia</s:option>
                                                <s:option value="Cameroon">Cameroon</s:option>
                                                <s:option value="Canada">Canada</s:option>
                                                <s:option value="Cape Verde">Cape Verde</s:option>
                                                <s:option value="Cayman Islands">Cayman Islands</s:option>
                                                <s:option value="Central African Republic">Central African Republic</s:option>
                                                <s:option value="Chad">Chad</s:option>
                                                <s:option value="Chile">Chile</s:option>
                                                <s:option value="China">China</s:option>
                                                <s:option value="Christmas Island">Christmas Island</s:option>
                                                <s:option value="Cocos Islands">Cocos (Keeling) Islands</s:option>
                                                <s:option value="Colombia">Colombia</s:option>
                                                <s:option value="Comoros">Comoros</s:option>
                                                <s:option value="Congo">Congo</s:option>
                                                <s:option value="Congo">Congo, the Democratic Republic of the</s:option>
                                                <s:option value="Cook Islands">Cook Islands</s:option>
                                                <s:option value="Costa Rica">Costa Rica</s:option>
                                                <s:option value="Cota D'Ivoire">Cote d'Ivoire</s:option>
                                                <s:option value="Croatia">Croatia (Hrvatska)</s:option>
                                                <s:option value="Cuba">Cuba</s:option>
                                                <s:option value="Cyprus">Cyprus</s:option>
                                                <s:option value="Czech Republic">Czech Republic</s:option>
                                                <s:option value="Denmark">Denmark</s:option>
                                                <s:option value="Djibouti">Djibouti</s:option>
                                                <s:option value="Dominica">Dominica</s:option>
                                                <s:option value="Dominican Republic">Dominican Republic</s:option>
                                                <s:option value="East Timor">East Timor</s:option>
                                                <s:option value="Ecuador">Ecuador</s:option>
                                                <s:option value="Egypt">Egypt</s:option>
                                                <s:option value="El Salvador">El Salvador</s:option>
                                                <s:option value="Equatorial Guinea">Equatorial Guinea</s:option>
                                                <s:option value="Eritrea">Eritrea</s:option>
                                                <s:option value="Estonia">Estonia</s:option>
                                                <s:option value="Ethiopia">Ethiopia</s:option>
                                                <s:option value="Falkland Islands">Falkland Islands (Malvinas)</s:option>
                                                <s:option value="Faroe Islands">Faroe Islands</s:option>
                                                <s:option value="Fiji">Fiji</s:option>
                                                <s:option value="Finland">Finland</s:option>
                                                <s:option value="France">France</s:option>
                                                <s:option value="France Metropolitan">France, Metropolitan</s:option>
                                                <s:option value="French Guiana">French Guiana</s:option>
                                                <s:option value="French Polynesia">French Polynesia</s:option>
                                                <s:option value="French Southern Territories">French Southern Territories</s:option>
                                                <s:option value="Gabon">Gabon</s:option>
                                                <s:option value="Gambia">Gambia</s:option>
                                                <s:option value="Georgia">Georgia</s:option>
                                                <s:option value="Germany">Germany</s:option>
                                                <s:option value="Ghana">Ghana</s:option>
                                                <s:option value="Gibraltar">Gibraltar</s:option>
                                                <s:option value="Greece">Greece</s:option>
                                                <s:option value="Greenland">Greenland</s:option>                                             
                                                <s:option value="Heard and McDonald Islands">Heard and Mc Donald Islands</s:option>
                                                <s:option value="Holy See">Holy See (Vatican City State)</s:option>
                                                <s:option value="Honduras">Honduras</s:option>
                                                <s:option value="Hong Kong">Hong Kong</s:option>
                                                <s:option value="Hungary">Hungary</s:option>
                                                <s:option value="Iceland">Iceland</s:option>
                                                <s:option value="India">India</s:option>
                                                <s:option value="Indonesia">Indonesia</s:option>
                                                <s:option value="Iran">Iran (Islamic Republic of)</s:option>
                                                <s:option value="Iraq">Iraq</s:option>
                                                <s:option value="Ireland">Ireland</s:option>
                                                <s:option value="Israel">Israel</s:option>
                                                <s:option value="Italy">Italy</s:option>
                                                <s:option value="Jamaica">Jamaica</s:option>
                                                <s:option value="Japan">Japan</s:option>
                                                <s:option value="Jordan">Jordan</s:option>                                
                                                <s:option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</s:option>
                                                <s:option value="Liechtenstein">Liechtenstein</s:option>
                                                <s:option value="Lithuania">Lithuania</s:option>
                                                <s:option value="Luxembourg">Luxembourg</s:option>
                                                <s:option value="Macau">Macau</s:option>
                                                <s:option value="Macedonia">Macedonia, The Former Yugoslav Republic of</s:option>
                                                <s:option value="Madagascar">Madagascar</s:option>
                                                <s:option value="Malawi">Malawi</s:option>
                                                <s:option value="Malaysia">Malaysia</s:option>
                                                <s:option value="Maldives">Maldives</s:option>
                                                <s:option value="Mali">Mali</s:option>
                                                <s:option value="Malta">Malta</s:option>
                                                <s:option value="Marshall Islands">Marshall Islands</s:option>
                                                <s:option value="Martinique">Martinique</s:option>
                                                <s:option value="Mauritania">Mauritania</s:option>
                                                <s:option value="Mauritius">Mauritius</s:option>
                                                <s:option value="Mayotte">Mayotte</s:option>
                                                <s:option value="Mexico">Mexico</s:option>
                                                <s:option value="Micronesia">Micronesia, Federated States of</s:option>
                                                <s:option value="Moldova">Moldova, Republic of</s:option>
                                                <s:option value="Monaco">Monaco</s:option>
                                                <s:option value="Mongolia">Mongolia</s:option>
                                                <s:option value="Montserrat">Montserrat</s:option>
                                                <s:option value="Morocco">Morocco</s:option>
                                                <s:option value="Mozambique">Mozambique</s:option>
                                                <s:option value="Myanmar">Myanmar</s:option>
                                                <s:option value="Namibia">Namibia</s:option>
                                                <s:option value="Nauru">Nauru</s:option>
                                                <s:option value="Nepal">Nepal</s:option>
                                                <s:option value="Netherlands">Netherlands</s:option>
                                                <s:option value="Netherlands Antilles">Netherlands Antilles</s:option>
                                                <s:option value="New Caledonia">New Caledonia</s:option>
                                                <s:option value="New Zealand">New Zealand</s:option>
                                                <s:option value="Nicaragua">Nicaragua</s:option>
                                                <s:option value="Niger">Niger</s:option>
                                                <s:option value="Nigeria">Nigeria</s:option>
                                                <s:option value="Niue">Niue</s:option>
                                                <s:option value="Norfolk Island">Norfolk Island</s:option>
                                                <s:option value="Northern Mariana Islands">Northern Mariana Islands</s:option>
                                                <s:option value="Norway">Norway</s:option>
                                                <s:option value="Oman">Oman</s:option>
                                                <s:option value="Pakistan">Pakistan</s:option>
                                                <s:option value="Palau">Palau</s:option>
                                                <s:option value="Panama">Panama</s:option>
                                                <s:option value="Papua New Guinea">Papua New Guinea</s:option>
                                                <s:option value="Paraguay">Paraguay</s:option>
                                      
                                                <s:option value="Vietnam" >Viet Nam</s:option>
                                                <s:option value="Virgin Islands (British)">Virgin Islands (British)</s:option>
                                                <s:option value="Virgin Islands (U.S)">Virgin Islands (U.S.)</s:option>
                                                <s:option value="Wallis and Futana Islands">Wallis and Futuna Islands</s:option>
                                                <s:option value="Western Sahara">Western Sahara</s:option>
                                                <s:option value="Yemen">Yemen</s:option>
                                                <s:option value="Serbia">Serbia</s:option>
                                                <s:option value="Zambia">Zambia</s:option>
                                                <s:option value="Zimbabwe">Zimbabwe</s:option>
                                            </s:select>
                                    </div>
                                </div>  
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2 class="font-weight-bold">Sales Information</h2>
                            </div>
                            <div class="body">                              
                                <div class="form-group">
                                    <label>Price</label>
                                    <s:input type="number" path="price" cssClass="form-control"/>
                                   	<small><s:errors path="price"></s:errors> </small>                                 
                                </div>
                                <div class="form-group">
                                    <label>In Stock</label>
                                    <small>Number of products in stock</small>
                                    <s:input type="number" class="form-control" path="quantity"/>                               
                                </div>
                                <div class="form-group">
                                    <label>Discount</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <label class="input-group-text" for="inputGroupSelect01">Options</label>
                                        </div>
                                        <select class="custom-select" id="inputGroupSelect01" name="discountId">
                                        <c:choose>
                                           		<c:when test="${not empty product.discount}">
                                           			<option value="0" selected>${product.discount.name }</option>
                                           		</c:when>
                                           	</c:choose>
                                        <c:forEach items="${discounts }" var="discount">
                                        	<option value="${discount.id }">${discount.name }</option>
                                        </c:forEach>
                                        </select>
                                    </div>
                                </div>                                                                                    
                                <button type="submit" class="btn btn-primary">Update</button> &nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/superadmin/product/index" class="btn btn-default">Cancel</a>
                                <s:hidden path="productId"/>                                                              
                            </div>
                        </div>
                    </div>
                </div>
        	</s:form>
        </div>
    </div>
	</jsp:attribute>
</mt:template_superadmin>