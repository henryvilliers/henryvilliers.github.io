<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	version="1.0"
	xmlns:dt='uuid:C2F41010-65B3-11d1-A29F-00AA00C14882'
	xmlns:rs='urn:schemas-microsoft-com:rowset'
	xmlns:z='#RowsetSchema'>
  <xsl:template match="/">

<html>

	<head>
		<meta http-equiv="content-type" content="text/html;charset=ISO-8859-1"/>
		<meta name="generator" content="Adobe GoLive 5"/>
		<title>MARSH Graduate Recruitment - Application Form</title>
		<script lang="JavaScript1.2"  src="js/marsh.js"> </script>
		
		<link rel="stylesheet" href="css/explorer.css"> </link>
		<link rel="stylesheet" href="css/netscape.css"> </link>
	</head>

	<body leftmargin="0" topmargin="0" background="media/bground.gif"  bgcolor="#ffffff" style="background-repeat: repeat-x" onload="PrintOut()">
		<xsl:for-each select="xml">
		<xsl:for-each select="grad">
		<form name="myForm" method="post" action="marshgrad.asp">
		<table border="0" cellpadding="0" cellspacing="0" width="342">
			<tr height="14">
				<td width="24" height="14"></td>
				<td height="14"></td>
			</tr>
			<tr>
				<td width="24"></td>
				<td><img src="media/your_application.gif" width="317" height="35" border="0"/></td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="615">
			<tr height="35">
				<td width="35" height="35"></td>
				<td width="210" height="35"></td>
				<td width="20" height="35"></td>
				<td width="350" height="35"></td>
			</tr>
			<tr>
				<td width="35" height="35"></td>
				<td colspan="3">
					<input type="button" class="bodytextsmall" value="Print Completed Application Form" onclick="window.print()"/>
				</td>	
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bluetextbold">Application Form (Part 1 of 3)</p>
				</td>
				<td width="20"></td>
				<td width="350"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="350" height="18"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Year applying to start</p>
				</td>
				<td width="20"></td>
				<td width="350"><span class="bodytextsmall">
							<xsl:if test="rs:data/z:row/@StartPeriodID='1'">
								October 2001
							</xsl:if>
							<xsl:if test="rs:data/z:row/@StartPeriodID='2'">
								October 2002
							</xsl:if>
							<xsl:if test="rs:data/z:row/@StartPeriodID='3'">
								October 2003
							</xsl:if>
							<xsl:if test="rs:data/z:row/@StartPeriodID='4'">
								October 2004
							</xsl:if>
							<xsl:if test="rs:data/z:row/@StartPeriodID='5'">
								October 2005
							</xsl:if>
					</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="350" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">How did you hear about the Marsh Graduate Recruitment Scheme?</p>
				</td>
				<td width="20"></td>
				<td width="350"><span class="bodytextsmall">
						<xsl:if test="rs:data/z:row/@HearAboutID!='0'">
								<xsl:value-of select="rs:data/z:row/@HearAbout"/>
						</xsl:if>
						</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="350" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Other </p>
				</td>
				<td width="20"></td>
				<td width="350"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@HearAboutOther"/>
												</span>	
				</td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="350" height="18"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodyorangelarge">Personal Details</p>
				</td>
				<td width="20"></td>
				<td width="350"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="350" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Surname</p>
				</td>
				<td width="20"></td>
				<td width="350"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@Surname"/>
													</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="350" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Forname(s)</p>
				</td>
				<td width="20"></td>
				<td width="350"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@Forenames"/>
													</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="350" height="12"></td>
			</tr>
			<tr height="22">
				<td width="35" height="22"></td>
				<td width="210" height="22">
					<p class="bodytextsmall">Title</p>
				</td>
				<td width="20" height="22"></td>
				<td width="350" height="22"><span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@Title='Mr'">
											Mr
										</xsl:if>
										<xsl:if test="rs:data/z:row/@Title='Mrs'">
											Mrs
										</xsl:if>
										<xsl:if test="rs:data/z:row/@Title='Ms'">
											Ms
										</xsl:if>
										<xsl:if test="rs:data/z:row/@Title='Miss'">
											Miss
										</xsl:if>
										</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="350" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Date of Birth</p>
				</td>
				<td width="20"></td>
				<td width="350">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@DOBx!='1/1/1900'">
												<xsl:value-of select="rs:data/z:row/@DOBx"/>
										</xsl:if>
										</span>
							</td>
							<td width="76" align="right">
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="350" height="12"></td>
			</tr>
			<tr height="22">
				<td width="35" height="22"></td>
				<td width="210" height="22">
					<p class="bodytextsmall">Gender</p>
				</td>
				<td width="20" height="22"></td>
				<td width="350" height="22"><span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@Gender='True'">
											Male
										</xsl:if>
										<xsl:if test="rs:data/z:row/@Gender='False'">
											Female
										</xsl:if>
										</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="350" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Nationality</p>
				</td>
				<td width="20"></td>
				<td width="350"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@Nationality"/>
													</span>
				</td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="350" height="18"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210"><span class="bodyorangelarge">Equal Opportunities Monitoring<br/>
					</span></td>
				<td width="20"></td>
				<td width="350"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall"></p>
				</td>
				<td width="20" height="12"></td>
				<td width="350" height="12"></td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="435">
			<tr>
				<td width="35"></td>
				<td>
					<p><span class="bodytextsmall">Marsh operates an Equal Opportunity Policy for monitoring recruitment and career progression.  To assist with the monitoring of our policy complete the following details by ticking where applicable.  Your information provided on this form will not be used to 	assess suitability for employment.  It will only be used for monitoring purposes and will be kept in accordance with the Data Protection Act 1998.</span></p>
				</td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="618">
			<tr height="15">
				<td width="35" height="15"></td>
				<td width="210" height="15"></td>
				<td width="20" height="15"></td>
				<td width="353" height="15"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Please indicate your ethnic origin:	</p>
				</td>
				<td width="20"></td>
				<td width="353">
						<span class="bodytextsmall">
						<xsl:if test="rs:data/z:row/@EthnicOriginID!='0'">
								<xsl:value-of select="rs:data/z:row/@EthnicOrigin"/>
						</xsl:if>
						</span></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="353" height="18"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodyorangelarge">Contact Details</p>
				</td>
				<td width="20"></td>
				<td width="353"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Home Address</p>
				</td>
				<td width="20">
				</td>
				<td width="353"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@HomeAddr1"/>
													</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Home Town</p>
				</td>
				<td width="20"></td>
				<td width="353"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@HomeAddr2"/></span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Home City</p>
				</td>
				<td width="20"></td>
				<td width="353"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@HomeCity"/>	</span>				
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Home Postcode</p>
				</td>
				<td width="20"></td>
				<td width="353"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@HomePostcode"/>
													</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<!--<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Dates at this Address</p>
				</td>
				<td width="20"></td>
				<td width="353">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="42" align="left">
								<p class="bodytextsmall">From</p>
							</td>
							<td>
								<div align="center">
									<span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@HomeDateFrom"/>
													</span>
								</div>
							</td>
							<td width="42" align="center">
								<p class="bodytextsmall">To</p>
							</td>
							<td><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@HomeDateTo"/>
													</span>
							</td>
							<td width="76" align="right">
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>-->
			<tr>
				<td width="35">
				</td>
				<td width="210">
					<p class="bodytextsmall">Term Address</p>
				</td>
				<td width="20"></td>
				<td width="353"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@TermAddr1"/>
													</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="22">
				<td width="35" height="22"></td>
				<td width="210" height="22">
					<p class="bodytextsmall">Term Town</p>
				</td>
				<td width="20" height="22"></td>
				<td width="353" height="22"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@TermAddr2"/>
													</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="22">
				<td width="35" height="22"></td>
				<td width="210" height="22">
					<p class="bodytextsmall">Term City</p>
				</td>
				<td width="20" height="22"></td>
				<td width="353" height="22"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@TermCity"/>
													</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="22">
				<td width="35" height="22"></td>
				<td width="210" height="22">
					<p class="bodytextsmall">Term Postcode</p>
				</td>
				<td width="20" height="22"></td>
				<td width="353" height="22"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@TermPostcode"/>
													</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<!--<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Dates at this Address</p>
				</td>
				<td width="20"></td>
				<td width="353">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="42" align="left">
								<p class="bodytextsmall">From</p>
							</td>
							<td>
								<div align="center">
									<span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@TermDateFrom"/>
													</span>
								</div>
							</td>
							<td width="42" align="center">
								<p class="bodytextsmall">To</p>
							</td>
							<td><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@TermDateTo"/>
													</span>
							</td>
							<td width="76" align="right">
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>-->
			<tr height="22">
				<td width="35" height="22"></td>
				<td width="210" height="22">
					<p class="bodytextsmall">Home Telephone</p>
				</td>
				<td width="20" height="22"></td>
				<td width="353" height="22"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@HomePhone"/>
													</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Term Telephone</p>
				</td>
				<td width="20"></td>
				<td width="353"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@TermPhone"/>
													</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Mobile Telephone</p>
				</td>
				<td width="20" height="18"></td>
				<td width="353" height="18"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@MobilePhone"/>
													</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Email Address</p>
				</td>
				<td width="20" height="18"></td>
				<td width="353" height="18"><span class="bodytextsmall">
														<xsl:value-of select="rs:data/z:row/@Email"/>
													</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18" valign="top" align="left">
					<p class="bodytextsmall">Are you required to hold a work Permit?</p>
				</td>
				<td width="20" height="18"></td>
				<td width="353" height="18" valign="top" align="left">
					<span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@ReqWorkPermit='1'">
											Yes
										</xsl:if>
										<xsl:if test="rs:data/z:row/@ReqWorkPermit='2'">
											No
										</xsl:if>
									</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Are you free to reside in the UK?</p>
				</td>
				<td width="20" height="18"></td>
				<td width="353" height="18"><span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@LiveWorkUK='1'">
											Yes
										</xsl:if>
										<xsl:if test="rs:data/z:row/@LiveWorkUK='2'">
											No
										</xsl:if>
									</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodyorangelarge">Education </p>
				</td>
				<td width="20"></td>
				<td width="353"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">University /College</p>
				</td>
				<td width="20" height="18">
				</td>
				<td width="353" height="18">
									<span class="bodytextsmall">
						<xsl:if test="rs:data/z:row/@uniid!='0'">
								<xsl:value-of select="rs:data/z:row/@University"/>
						</xsl:if>
						</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Overseas (please specify)</p>
				</td>
				<td width="20" height="18"></td>
				<td width="353" height="18"><span class="bodytextsmall">
																				<xsl:value-of select="rs:data/z:row/@OtherUni"/>
																			</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Subject</p>
				</td>
				<td width="20" height="18"></td>
				<td width="353" height="18"><span class="bodytextsmall">
																				<xsl:value-of select="rs:data/z:row/@degreesubject"/>
																			</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Start Date</p>
				</td>
				<td width="20" height="18"></td>
				<td width="353" height="18">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="42" align="left">
								<p class="bodytextsmall">
										<span class="bodytextsmall">
											<xsl:if test="rs:data/z:row/@DegreeStartDate='1/9/1995'">
												09/1995
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeStartDate='1/9/1996'">
												09/1996
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeStartDate='1/9/1997'">
												09/1997
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeStartDate='1/9/1998'">
												09/1998
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeStartDate='1/9/1999'">
												09/1999
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeStartDate='1/9/2000'">
												09/2000
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeStartDate='1/9/2001'">
												09/2001
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeStartDate='1/9/2002'">
												09/2002
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeStartDate='1/1/1900'">
												Other - Please specify
											</xsl:if>
											</span>
									</p>
							</td>
							<td width="60" align="center">
								<p class="bodytextsmall">Other</p>
							</td>
							<td><span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@DegreeOtherStartDate!='1/1/1900'">
												<xsl:value-of select="rs:data/z:row/@DegreeOtherStartDate"/>
										</xsl:if>
									</span>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">End Date</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="42" align="left">
								<p class="bodytextsmall"><span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@DegreeEndDate='1/6/1998'">
												06/1998
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeEndDate='1/6/1999'">
												06/1999
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeEndDate='1/6/2000'">
												06/2000
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeEndDate='1/6/2001'">
												06/2001
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeEndDate='1/6/2002'">
												06/2002
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeEndDate='1/6/2003'">
												06/2003
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeEndDate='1/6/2004'">
												06/2004
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeEndDate='1/6/2005'">
												06/2005
											</xsl:if>
										<xsl:if test="rs:data/z:row/@DegreeEndDate='1/1/1900'">
												Other - Please specify
											</xsl:if>
									</span></p>
							</td>
							<td width="60" align="center">
								<p class="bodytextsmall">Other</p>
							</td>
							<td><span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@DegreeOtherEndDate!='1/1/1900'">
												<xsl:value-of select="rs:data/z:row/@DegreeOtherEndDate"/>
										</xsl:if>
									</span>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Qualification and Grade <br/>
						(Attained / Anticipated)</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12" valign="top"><span class="bodytextsmall">
							<xsl:if test="rs:data/z:row/@DegreeGradeID='1'">
								Attained - 1st
							</xsl:if>
						<xsl:if test="rs:data/z:row/@DegreeGradeID='2'">
								Attained - 2.1
							</xsl:if>
						<xsl:if test="rs:data/z:row/@DegreeGradeID='3'">
								Attained - 2.2
							</xsl:if>
						<xsl:if test="rs:data/z:row/@DegreeGradeID='4'">
								Anticipated - 1st
							</xsl:if>
						<xsl:if test="rs:data/z:row/@DegreeGradeID='5'">
								Anticipated - 2.1
							</xsl:if>
						<xsl:if test="rs:data/z:row/@DegreeGradeID='6'">
								Anticipated - 2.2
							</xsl:if>
					</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">A'Level or Equivalent</p>
				</td>
				<td width="20" height="12">							
				</td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="alevel/rs:data/z:row[position()=1]">
																		  		<xsl:value-of select="@Subject"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Year Taken</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
																				<xsl:for-each select="alevel/rs:data/z:row[position()=1]">
																		  		<xsl:value-of select="@Year"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Grade</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
						<xsl:for-each select="alevel/rs:data/z:row[position()=1]">
							<xsl:if test="@Grade!=''">
										<xsl:value-of select="@Grade"/>
							</xsl:if>
						</xsl:for-each>
						</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">A'Level or Equivalent</p>
				</td>
				<td width="20" height="12">	
				</td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="alevel/rs:data/z:row[position()=2]">
																		  		<xsl:value-of select="@Subject"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Year Taken</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="alevel/rs:data/z:row[position()=2]">
																		  		<xsl:value-of select="@Year"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Grade</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
						<xsl:for-each select="alevel/rs:data/z:row[position()=2]">
							<xsl:if test="@Grade!=''">
									<xsl:value-of select="@Grade"/>
							</xsl:if>
						</xsl:for-each>
						</span>
						</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">A'Level or Equivalent</p>
				</td>
				<td width="20" height="12">
				</td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="alevel/rs:data/z:row[position()=3]">
																		  		<xsl:value-of select="@Subject"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Year Taken</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="alevel/rs:data/z:row[position()=3]">
																		  		<xsl:value-of select="@Year"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Grade</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
						<xsl:for-each select="alevel/rs:data/z:row[position()=3]">
							<xsl:if test="@Grade!=''">
									<xsl:value-of select="@Grade"/>
							</xsl:if>
						</xsl:for-each>
						</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">A'Level or Equivalent</p>
				</td>
				<td width="20" height="12">
				</td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="alevel/rs:data/z:row[position()=4]">
																		  		<xsl:value-of select="@Subject"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Year Taken</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="alevel/rs:data/z:row[position()=4]">
																		  		<xsl:value-of select="@Year"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Grade</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
						<xsl:for-each select="alevel/rs:data/z:row[position()=4]">
							<xsl:if test="@Grade!=''">
									<xsl:value-of select="@Grade"/>
							</xsl:if>
						</xsl:for-each>
						</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Other Qualification</p>
				</td>
				<td width="20" height="12">						
				</td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="qual/rs:data/z:row[position()=1]">
																		  		<xsl:value-of select="@Qualification"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Year Taken</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
																				<xsl:for-each select="qual/rs:data/z:row[position()=1]">
																		  		<xsl:value-of select="@Year"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Grade</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
																				<xsl:for-each select="qual/rs:data/z:row[position()=1]">
																		  		<xsl:value-of select="@Grade"/>
																		  	</xsl:for-each>
																		  </span>
																		  </td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Other Qualification</p>
				</td>
				<td width="20" height="12">	
				</td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="qual/rs:data/z:row[position()=2]">
																		  		<xsl:value-of select="@Qualification"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Year Taken</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="qual/rs:data/z:row[position()=2]">
																		  		<xsl:value-of select="@Year"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Grade</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
																				<xsl:for-each select="qual/rs:data/z:row[position()=2]">
																		  		<xsl:value-of select="@Grade"/>
																		  	</xsl:for-each>
																		 </span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Other Qualification</p>
				</td>
				<td width="20" height="12">
				</td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="qual/rs:data/z:row[position()=3]">
																		  		<xsl:value-of select="@Qualification"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Year Taken</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="qual/rs:data/z:row[position()=3]">
																		  		<xsl:value-of select="@Year"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Grade</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
																				<xsl:for-each select="qual/rs:data/z:row[position()=3]">
																		  		<xsl:value-of select="@Grade"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Other Qualififcation</p>
				</td>
				<td width="20" height="12">
				</td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="qual/rs:data/z:row[position()=4]">
																		  		<xsl:value-of select="@Qualification"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Year Taken</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
																		  	<xsl:for-each select="qual/rs:data/z:row[position()=4]">
																		  		<xsl:value-of select="@Year"/>
																		  	</xsl:for-each>
																		  </span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Grade</p>
				</td>
				<td width="20" height="12"></td>
				<td width="353" height="12"><span class="bodytextsmall">
																				<xsl:for-each select="qual/rs:data/z:row[position()=4]">
																					<xsl:value-of select="@Grade"/>
																				</xsl:for-each>
																			</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="353" height="12">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
							<td width="20"></td>
							<td></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr height="15">
				<td width="35" height="15"></td>
				<td width="210" height="15"></td>
				<td width="20" height="15"></td>
				<td width="353" height="15"></td>
			</tr>
		</table>
		
<p style="page-break-before: always"/>		
		
		<table border="0" cellpadding="0" cellspacing="0" width="511">
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bluetextbold">Application Form (Part 2 of 3)</p>
				</td>
				<td width="20"></td>
				<td width="246"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="246" height="18"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Area of Interest</p>
				</td>
				<td width="20">
				</td>
				<td width="246">
					<span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@HR='True'">
											Human Resources
										</xsl:if>
							</span>
				</td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210"></td>
				<td width="20"></td>
				<td width="246"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="246" height="12">
					<span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@CM='True'">
											Client Management
										</xsl:if>
							</span>
				</td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210"></td>
				<td width="20"></td>
				<td width="246"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="246" height="12">
					<span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@BK='True'">
											Broking
										</xsl:if>
							</span>
				</td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210"></td>
				<td width="20"></td>
				<td width="246"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="246" height="12">
					<span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@RC='True'">
											Risk Consulting
										</xsl:if>
							</span>
				</td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210"></td>
				<td width="20"></td>
				<td width="246"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="246" height="12">
					<span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@IT='True'">
											Information Technology
										</xsl:if>
							</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="246" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Region</p>
				</td>
				<td width="20" height="12"><input type="hidden" name="locid">
													<xsl:attribute name="value">
														<xsl:value-of select="rs:data/z:row/@LocID"/>
													</xsl:attribute>
												</input></td>
				<td width="246" height="12">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@LocCentral='True'">
											Central
										</xsl:if>
							</span></td>
							<td width="12"></td>
							<td>
								
							</td>
							<td width="36"></td>
							<td></td>
							<td width="12"></td>
							<td>
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210"></td>
				<td width="20"></td>
				<td width="246"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="246" height="12">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@LocSouthern='True'">
											Southern
										</xsl:if>
							</span></td>
							<td width="12"></td>
							<td>
								
							</td>
							<td width="20"></td>
							<td></td>
							<td width="12"></td>
							<td>
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210"></td>
				<td width="20"></td>
				<td width="246"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="246" height="12">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@LocNorthern='True'">
											Northern
										</xsl:if>
							</span></td>
							<td width="12"></td>
							<td>
								
							</td>
							<td width="20"></td>
							<td></td>
							<td width="12"></td>
							<td>
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210"></td>
				<td width="20"></td>
				<td width="246"></td>
			</tr>

			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="246" height="18"></td>
			</tr>
			
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Do you require special assistance in order to attend an interview?</p>
				</td>
				<td width="20"></td>
				<td width="246" valign="top">
				<span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@Assistance='True'">
											Yes
										</xsl:if>
									
										<xsl:if test="rs:data/z:row/@Assistance!='True'">
											No
										</xsl:if>
							</span>
				</td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="246" height="18"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18" valign="top">
					<p class="bodytextsmall">If your answer is yes, please provide details</p>
				</td>
				<td width="20" height="18"></td>
				<td width="246" height="18"><span class="bodytextsmall">
																				<xsl:if test="rs:data/z:row/@Assistance='True'">
																					<xsl:value-of select="rs:data/z:row/@AssistanceDetails"/>
																				</xsl:if>
				</span></td>
			</tr>
			
			<tr>
				<td width="35"></td>
				<td width="210"><span class="bodyorangelarge">Equal Opportunities Monitoring<br/>
					</span></td>
				<td width="20"></td>
				<td width="246"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall"></p>
				</td>
				<td width="20" height="12"></td>
				<td width="246" height="12"></td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="435">
			<tr>
				<td width="35"></td>
				<td>
					<p class="bodytextsmall">You are required to disclose any convictions which are not spent by virtue of the Rehabilitation of Offenders Act 1974. Convictions, which the company consider irrelevant to the job, will not be taken into consideration.</p>
				</td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="570">
			<tr height="15">
				<td width="35" height="15"></td>
				<td width="210" height="15"></td>
				<td width="20" height="15"></td>
				<td width="305" height="15"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Do you have a conviction which is not yet spent?</p>
				</td>
				<td width="20"></td>
				<td width="305" valign="top">
					<span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@Conviction='True'">
											Yes
										</xsl:if>
										<xsl:if test="rs:data/z:row/@Conviction!='True'">
											No
										</xsl:if>
							</span>
				</td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="305" height="18"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18" valign="top">
					<p class="bodytextsmall">If your answer is yes, please provide details</p>
				</td>
				<td width="20" height="18"></td>
				<td width="305" height="18"><span class="bodytextsmall">
																				<xsl:if test="rs:data/z:row/@Conviction='True'">
																					<xsl:value-of select="rs:data/z:row/@ConvictionDetails"/>
																				</xsl:if>
				</span></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="305" height="18"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodyorangelarge">Language Ability</p>
				</td>
				<td width="20"></td>
				<td width="305"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Language 1 </p>
				</td>
				<td width="20"></td>
				<td width="305"><span class="bodytextsmall">
														<xsl:for-each select="lang/rs:data/z:row[position()=1]">
															<xsl:value-of select="@Language"/>
														</xsl:for-each>
														</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Spoken</p>
				</td>
				<td width="20"></td>
				<td width="305"><span class="bodytextsmall">
							<xsl:for-each select="lang/rs:data/z:row[position()=1]">
								<xsl:if test="@SpokenLevelID='1'">
									Basic
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=1]">
								<xsl:if test="@SpokenLevelID='2'">
									Intermediate
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=1]">
								<xsl:if test="@SpokenLevelID='3'">
									Advanced
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=1]">
								<xsl:if test="@SpokenLevelID='4'">
									Fluent
								</xsl:if>
							</xsl:for-each>
						
					</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Written</p>
				</td>
				<td width="20"></td>
				<td width="305"><span class="bodytextsmall">
							<xsl:for-each select="lang/rs:data/z:row[position()=1]">
								<xsl:if test="@WrittenLevelID='1'">
									Basic
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=1]">
								<xsl:if test="@WrittenLevelID='2'">
									ntermediate
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=1]">
								<xsl:if test="@WrittenLevelID='3'">
									Advanced
								</xsl:if>
							</xsl:for-each>
					</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Language 2</p>
				</td>
				<td width="20"></td>
				<td width="305"><span class="bodytextsmall">
														<xsl:for-each select="lang/rs:data/z:row[position()=2]">
															<xsl:value-of select="@Language"/>
														</xsl:for-each>
														</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="22">
				<td width="35" height="22"></td>
				<td width="210" height="22">
					<p class="bodytextsmall">Spoken</p>
				</td>
				<td width="20" height="22"></td>
				<td width="305"><span class="bodytextsmall">
							<xsl:for-each select="lang/rs:data/z:row[position()=2]">
								<xsl:if test="@SpokenLevelID='1'">
									Basic
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=2]">
								<xsl:if test="@SpokenLevelID='2'">
									Intermediate
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=2]">
								<xsl:if test="@SpokenLevelID='3'">
									Advanced
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=2]">
								<xsl:if test="@SpokenLevelID='4'">
									Fluent
								</xsl:if>
							</xsl:for-each>
						
					</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Written</p>
				</td>
				<td width="20"></td>
				<td width="305"><span class="bodytextsmall">
							<xsl:for-each select="lang/rs:data/z:row[position()=2]">
								<xsl:if test="@WrittenLevelID='1'">
									Basic
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=2]">
								<xsl:if test="@WrittenLevelID='2'">
									ntermediate
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=2]">
								<xsl:if test="@WrittenLevelID='3'">
									Advanced
								</xsl:if>
							</xsl:for-each>
					</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="22">
				<td width="35" height="22"></td>
				<td width="210" height="22">
					<p class="bodytextsmall">Language 3</p>
				</td>
				<td width="20" height="22"></td>
				<td width="305" height="22"><span class="bodytextsmall">
																				<xsl:for-each select="lang/rs:data/z:row[position()=3]">
																					<xsl:value-of select="@Language"/>
																				</xsl:for-each>
																			</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Spoken</p>
				</td>
				<td width="20"></td>
				<td width="305"><span class="bodytextsmall">
							<xsl:for-each select="lang/rs:data/z:row[position()=3]">
								<xsl:if test="@SpokenLevelID='1'">
									Basic
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=3]">
								<xsl:if test="@SpokenLevelID='2'">
									Intermediate
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=3]">
								<xsl:if test="@SpokenLevelID='3'">
									Advanced
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=3]">
								<xsl:if test="@SpokenLevelID='4'">
									Fluent
								</xsl:if>
							</xsl:for-each>
						
					</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Written</p>
				</td>
				<td width="20" height="18"></td>
				<td width="305"><span class="bodytextsmall">
							<xsl:for-each select="lang/rs:data/z:row[position()=3]">
								<xsl:if test="@WrittenLevelID='1'">
									Basic
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=3]">
								<xsl:if test="@WrittenLevelID='2'">
									ntermediate
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="lang/rs:data/z:row[position()=3]">
								<xsl:if test="@WrittenLevelID='3'">
									Advanced
								</xsl:if>
							</xsl:for-each>
					</span>
				</td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="305" height="18"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodyorangelarge">Computer Skills</p>
				</td>
				<td width="20" height="18"></td>
				<td width="305" height="18"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Application 1</p>
				</td>
				<td width="20" height="18"></td>
				<td width="305" height="18" valign="top" align="left">
				<span class="bodytextsmall">
								<xsl:for-each select="comp/rs:data/z:row[position()=1]">
									<xsl:value-of select="@Skill"/>
								</xsl:for-each>
							</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Skill Level</p>
				</td>
				<td width="20" height="18"></td>
				<td width="305" height="18"><span class="bodytextsmall">
							<xsl:for-each select="comp/rs:data/z:row[position()=1]">
								<xsl:if test="@SkillLevel='1'">
									Basic
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="comp/rs:data/z:row[position()=1]">
								<xsl:if test="@SkillLevel='2'">
									Intermediate
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="comp/rs:data/z:row[position()=1]">
								<xsl:if test="@SkillLevel='3'">
									Advanced
								</xsl:if>
							</xsl:for-each>
					</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Application 2</p>
				</td>
				<td width="20" height="18"></td>
				<td width="305" height="18" valign="top" align="left">
				<span class="bodytextsmall">
								<xsl:for-each select="comp/rs:data/z:row[position()=2]">
									<xsl:value-of select="@Skill"/>
								</xsl:for-each>
							</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Skill Level</p>
				</td>
				<td width="20" height="18"></td>
				<td width="305" height="18"><span class="bodytextsmall">
							<xsl:for-each select="comp/rs:data/z:row[position()=2]">
								<xsl:if test="@SkillLevel='1'">
									Basic
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="comp/rs:data/z:row[position()=2]">
								<xsl:if test="@SkillLevel='2'">
									Intermediate
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="comp/rs:data/z:row[position()=2]">
								<xsl:if test="@SkillLevel='3'">
									Advanced
								</xsl:if>
							</xsl:for-each>
					</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Application 3</p>
				</td>
				<td width="20"></td>
				<td width="305">
				<span class="bodytextsmall">
								<xsl:for-each select="comp/rs:data/z:row[position()=3]">
									<xsl:value-of select="@Skill"/>
								</xsl:for-each>
							</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Skill Level</p>
				</td>
				<td width="20" height="18"></td>
				<td width="305" height="18"><span class="bodytextsmall">
							<xsl:for-each select="comp/rs:data/z:row[position()=3]">
								<xsl:if test="@SkillLevel='1'">
									Basic
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="comp/rs:data/z:row[position()=3]">
								<xsl:if test="@SkillLevel='2'">
									Intermediate
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="comp/rs:data/z:row[position()=3]">
								<xsl:if test="@SkillLevel='3'">
									Advanced
								</xsl:if>
							</xsl:for-each>
					</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Application 4</p>
				</td>
				<td width="20" height="18"></td>
				<td width="305" height="18">
				<span class="bodytextsmall">
								<xsl:for-each select="comp/rs:data/z:row[position()=4]">
									<xsl:value-of select="@Skill"/>
								</xsl:for-each>
							</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Skill Level</p>
				</td>
				<td width="20" height="18"></td>
				<td width="305" height="18"><span class="bodytextsmall">
							<xsl:for-each select="comp/rs:data/z:row[position()=4]">
								<xsl:if test="@SkillLevel='1'">
									Basic
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="comp/rs:data/z:row[position()=4]">
								<xsl:if test="@SkillLevel='2'">
									Intermediate
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="comp/rs:data/z:row[position()=4]">
								<xsl:if test="@SkillLevel='3'">
									Advanced
								</xsl:if>
							</xsl:for-each>
					</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Application 5</p>
				</td>
				<td width="20" height="18"></td>
				<td width="305" height="18">
				<span class="bodytextsmall">
								<xsl:for-each select="comp/rs:data/z:row[position()=5]">
									<xsl:value-of select="@Skill"/>
								</xsl:for-each>
							</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Skill Level</p>
				</td>
				<td width="20" height="12"></td>
				<td width="305" height="18"><span class="bodytextsmall">
							<xsl:for-each select="comp/rs:data/z:row[position()=5]">
								<xsl:if test="@SkillLevel='1'">
									Basic
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="comp/rs:data/z:row[position()=5]">
								<xsl:if test="@SkillLevel='2'">
									Intermediate
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="comp/rs:data/z:row[position()=5]">
								<xsl:if test="@SkillLevel='3'">
									Advanced
								</xsl:if>
							</xsl:for-each>
					</span>
				</td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="305" height="18"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodyorangelarge">Work Experience</p>
				</td>
				<td width="20" height="12"></td>
				<td width="305" height="12" valign="top"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="435">
			<tr>
				<td width="35"></td>
				<td>
					<p class="bodytextsmall">Please give details of all employment undertaken. Indicate whether the work was full-time, vacational or an industrial placement.</p>
				</td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="554">
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Employer 1</p>
				</td>
				<td width="20"></td>
				<td width="289"><span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=1]">
														<xsl:value-of select="@Employer"/>
													</xsl:for-each>
												</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Dates of Employment</p>
				</td>
				<td width="20"></td>
				<td width="289">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="42" align="left">
								<p class="bodytextsmall">From</p>
							</td>
							<td>
								<div align="center">
									<span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=1]">
														<xsl:if test="@WorkedFrom!='1/1/1900'">
															<xsl:value-of select="@WorkedFrom"/>
														</xsl:if>
													</xsl:for-each>
												</span></div>
							</td>
							<td width="42" align="center">
								<p class="bodytextsmall">To</p>
							</td>
							<td><span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=1]">
														<xsl:if test="@WorkedTo!='1/1/1900'">
															<xsl:value-of select="@WorkedTo"/>
														</xsl:if>
													</xsl:for-each>
												</span></td>
							<td width="76" align="right">
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Contract</p>
				</td>
				<td width="20"></td>
				<td width="289"><span class="bodytextsmall">
							<xsl:for-each select="work/rs:data/z:row[position()=1]">
								<xsl:if test="@TypeID='1'">
									Full Time
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="work/rs:data/z:row[position()=1]">
								<xsl:if test="@TypeID='2'">
									Vocational
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="work/rs:data/z:row[position()=1]">
								<xsl:if test="@TypeID='3'">
									Industrial Placement
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="work/rs:data/z:row[position()=1]">
								<xsl:if test="@TypeID='4'">
									Weekend/Summer
								</xsl:if>
							</xsl:for-each>
					</span></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="289" height="18"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Job Title/Responsibilities</p>
				</td>
				<td width="20"></td>
				<td width="289"><span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=1]">
														<xsl:value-of select="@JobDescription"/>
													</xsl:for-each>
												</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Employer 2</p>
				</td>
				<td width="20"></td>
				<td width="289"><span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=2]">
														<xsl:value-of select="@Employer"/>
													</xsl:for-each>
												</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Dates of Employment</p>
				</td>
				<td width="20"></td>
				<td width="289">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="42" align="left">
								<p class="bodytextsmall">From</p>
							</td>
							<td>
								<div align="center">
									<span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=2]">
														<xsl:if test="@WorkedFrom!='1/1/1900'">
															<xsl:value-of select="@WorkedFrom"/>
														</xsl:if>
													</xsl:for-each>
												</span></div>
							</td>
							<td width="42" align="center">
								<p class="bodytextsmall">To</p>
							</td>
							<td><span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=2]">
														<xsl:if test="@WorkedTo!='1/1/1900'">
															<xsl:value-of select="@WorkedTo"/>
														</xsl:if>
													</xsl:for-each>
												</span></td>
							<td width="76" align="right">
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr height="22">
				<td width="35" height="22"></td>
				<td width="210" height="22">
					<p class="bodytextsmall">Contract</p>
				</td>
				<td width="20" height="22"></td>
				<td width="289" height="22"><span class="bodytextsmall">
							<xsl:for-each select="work/rs:data/z:row[position()=2]">
								<xsl:if test="@TypeID='1'">
									Full Time
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="work/rs:data/z:row[position()=2]">
								<xsl:if test="@TypeID='2'">
									Vocational
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="work/rs:data/z:row[position()=2]">
								<xsl:if test="@TypeID='3'">
									Industrial Placement
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="work/rs:data/z:row[position()=2]">
								<xsl:if test="@TypeID='4'">
									Weekend/Summer 
								</xsl:if>
							</xsl:for-each>
					</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Job Title/Responsibilities</p>
				</td>
				<td width="20"></td>
				<td width="289"><span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=2]">
														<xsl:value-of select="@JobDescription"/>
													</xsl:for-each>
												</span></td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="647">
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Employer 3</p>
				</td>
				<td width="20"></td>
				<td width="382"><span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=3]">
														<xsl:value-of select="@Employer"/>
													</xsl:for-each>
												</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Dates of Employment</p>
				</td>
				<td width="20"></td>
				<td width="382">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="42" align="left">
								<p class="bodytextsmall">From</p>
							</td>
							<td>
								<div align="center">
									<span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=3]">
														<xsl:if test="@WorkedFrom!='1/1/1900'">
															<xsl:value-of select="@WorkedFrom"/>
														</xsl:if>
													</xsl:for-each>
												</span></div>
							</td>
							<td width="42" align="center">
								<p class="bodytextsmall">To</p>
							</td>
							<td><span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=3]">
														<xsl:if test="@WorkedTo!='1/1/1900'">
															<xsl:value-of select="@WorkedTo"/>
														</xsl:if>
													</xsl:for-each>
												</span></td>
							<td width="76" align="right">
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Contract</p>
				</td>
				<td width="20"></td>
				<td width="289" height="22"><span class="bodytextsmall">
							<xsl:for-each select="work/rs:data/z:row[position()=3]">
								<xsl:if test="@TypeID='1'">
									Full Time
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="work/rs:data/z:row[position()=3]">
								<xsl:if test="@TypeID='2'">
									Vocational
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="work/rs:data/z:row[position()=3]">
								<xsl:if test="@TypeID='3'">
									Industrial Placement
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="work/rs:data/z:row[position()=3]">
								<xsl:if test="@TypeID='4'">
									Weekend/Summer
								</xsl:if>
							</xsl:for-each>
					</span></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="382" height="18"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Job Title/Responsibilities</p>
				</td>
				<td width="20"></td>
				<td width="382"><span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=3]">
														<xsl:value-of select="@JobDescription"/>
													</xsl:for-each>
												</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Employer 4</p>
				</td>
				<td width="20"></td>
				<td width="382"><span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=4]">
														<xsl:value-of select="@Employer"/>
													</xsl:for-each>
												</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Dates of Employment</p>
				</td>
				<td width="20"></td>
				<td width="382">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="42" align="left">
								<p class="bodytextsmall">From</p>
							</td>
							<td>
								<div align="center">
									<span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=4]">
														<xsl:if test="@WorkedFrom!='1/1/1900'">
															<xsl:value-of select="@WorkedFrom"/>
														</xsl:if>
													</xsl:for-each>
												</span></div>
							</td>
							<td width="42" align="center">
								<p class="bodytextsmall">To</p>
							</td>
							<td><span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=4]">
														<xsl:if test="@WorkedTo!='1/1/1900'">
															<xsl:value-of select="@WorkedTo"/>
														</xsl:if>
													</xsl:for-each>
												</span></td>
							<td width="76" align="right">
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr height="22">
				<td width="35" height="22"></td>
				<td width="210" height="22">
					<p class="bodytextsmall">Contract</p>
				</td>
				<td width="20" height="22"></td>
				<td width="289" height="22"><span class="bodytextsmall">
							<xsl:for-each select="work/rs:data/z:row[position()=4]">
								<xsl:if test="@TypeID='1'">
									Full Time
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="work/rs:data/z:row[position()=4]">
								<xsl:if test="@TypeID='2'">
									Vocational
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="work/rs:data/z:row[position()=4]">
								<xsl:if test="@TypeID='3'">
									Industrial Placement
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="work/rs:data/z:row[position()=4]">
								<xsl:if test="@TypeID='4'">
									Weekend/Summer
								</xsl:if>
							</xsl:for-each>
					</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Job Title/Responsibilities</p>
				</td>
				<td width="20"></td>
				<td width="382"><span class="bodytextsmall">
													<xsl:for-each select="work/rs:data/z:row[position()=4]">
														<xsl:value-of select="@JobDescription"/>
													</xsl:for-each>
												</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12" valign="top">
					<p class="bodytextsmall">How do you feel you have benefited from the work undertaken? (maximum 50 words)</p>
				</td>
				<td width="20" height="12"></td>
				<td width="382" height="12" valign="top"><span class="bodytextsmall">
																										<xsl:value-of select="rs:data/z:row/@WorkBenefit"/>
				</span></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="382" height="18"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodyorangelarge">Career Objectives</p>
				</td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12" valign="top">
					<p class="bodytextsmall">Why have you decided to apply for a career in insurance, and with Marsh in particular? (maximum 50 words)</p>
				</td>
				<td width="20" height="12"></td>
				<td width="382" height="12" valign="top"><span class="bodytextsmall">
																								<xsl:value-of select="rs:data/z:row/@CareerObjectives"/>
				</span></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="382" height="18"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodyorangelarge">Personal Qualities</p>
				</td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12" valign="top">
					<p class="bodytextsmall">Please give an example of when you had to persuade others to accept and follow your preferred course of action.<br/>
						(maximum 50 words)</p>
				</td>
				<td width="20" height="12"></td>
				<td width="382" height="12" valign="top"><span class="bodytextsmall">
																									<xsl:value-of select="rs:data/z:row/@LeadershipEx"/>
				</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12" valign="top">
					<p class="bodytextsmall">Please give an example of when you had to develop strong working relationships with others to achieve a specified outcome.<br/>
						(maximum 50 words)</p>
				</td>
				<td width="20" height="12"></td>
				<td width="382" height="12"><span class="bodytextsmall">
																				<xsl:value-of select="rs:data/z:row/@TeamPlayerEx"/>
				</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12" valign="top">
					<p class="bodytextsmall">Please give an example of when you had to design and deliver a new solution to an existing problem. (maximum 50 words)</p>
				</td>
				<td width="20" height="12"></td>
				<td width="382" height="12"><span class="bodytextsmall">
																			<xsl:value-of select="rs:data/z:row/@LateralEx"/>
				</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12" valign="top">
					<p class="bodytextsmall">Please give an example of when you had to collect and analyse complex information and then justify your conclusions.<br/>
						(maximum 50 words)</p>
				</td>
				<td width="20" height="12"></td>
				<td width="382" height="12"><span class="bodytextsmall">
																				<xsl:value-of select="rs:data/z:row/@InvestigativeEx"/>
				</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12" valign="top">
					<p class="bodytextsmall">Please give details of other interests <br/>
						and activities.<br/>
						(maximum 50 words)</p>
				</td>
				<td width="20" height="12"></td>
				<td width="382" height="12"><span class="bodytextsmall">
																			<xsl:value-of select="rs:data/z:row/@Hobbies"/>
				</span></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="382" height="18"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodyorangelarge">Additional Information</p>
				</td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12" valign="top">
					<p class="bodytextsmall">Please give any other information which you think would be helpful in support of your application.<br/>
						(maximum 100 words)</p>
				</td>
				<td width="20" height="12"></td>
				<td width="382" height="12"><span class="bodytextsmall">
																			<xsl:value-of select="rs:data/z:row/@AdditionalInfo"/>
					</span></td>
			</tr>
			<tr height="30">
				<td width="35" height="30"></td>
				<td width="210" height="30"></td>
				<td width="20" height="30"></td>
				<td width="382" height="30"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="382" height="12">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
							<td width="20"></td>
							<td></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>

<p style="page-break-before: always"/>		

		<table border="0" cellpadding="0" cellspacing="0" width="511">
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bluetextbold">Application Form (Part 3 of 3)</p>
				</td>
				<td width="20"></td>
				<td width="246"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="246" height="18"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodyorangelarge">Medical</p>
				</td>
				<td width="20"></td>
				<td width="246">
					
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="246" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Have you suffered any injury or illness involving an absence of 3 weeks or more  from university?</p>
				</td>
				<td width="20" height="12"></td>
				<td width="246" height="12" valign="top">
					<span class="bodytextsmall">
											<xsl:if test="rs:data/z:row/@PastIllness='True'">
												Yes
											</xsl:if>
										<xsl:if test="rs:data/z:row/@PastIllness!='True'">
												No
											</xsl:if>
							</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="246" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12" valign="top">
					<p class="bodytextsmall">If your answer is yes, please provide brief details</p>
				</td>
				<td width="20" height="12"></td>
				<td width="246" height="12"><span class="bodytextsmall">
																			<xsl:value-of select="rs:data/z:row/@PastIllnessDetails"/>
				</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="246" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall">Are you currently receiving medical treatment?</p>
				</td>
				<td width="20" height="12"></td>
				<td width="246" height="12" valign="top">
					<span class="bodytextsmall">
										<xsl:if test="rs:data/z:row/@CurrentIllness='True'">
												Yes
											</xsl:if>
										<xsl:if test="rs:data/z:row/@CurrentIllness!='True'">
												No
											</xsl:if>
							</span>
				</td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="246" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12" valign="top">
					<p class="bodytextsmall">If yes, please state the nature and any adjustments required.</p>
				</td>
				<td width="20" height="12"></td>
				<td width="246" height="12"><span class="bodytextsmall">
																			<xsl:value-of select="rs:data/z:row/@CurrentIllnessDetails"/>
				</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="246" height="12"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12" valign="top">
					<p class="bodytextsmall">Please give an estimate of your sickness absence in the last 12 months.</p>
				</td>
				<td width="20" height="12"></td>
				<td width="246" height="12"><span class="bodytextsmall">
																			<xsl:value-of select="rs:data/z:row/@AbsenceDetails"/>
				</span></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="246" height="18"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodyorangelarge">Emergency Contact</p>
				</td>
				<td width="20"></td>
				<td width="246"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodytextsmall"></p>
				</td>
				<td width="20" height="12"></td>
				<td width="246" height="12"></td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="435">
			<tr>
				<td width="35"></td>
				<td>
					<p class="bodytextsmall">Please provide the details of a person who can be contacted in case of emergency.</p>
				</td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="570">
			<tr height="15">
				<td width="35" height="15"></td>
				<td width="210" height="15"></td>
				<td width="20" height="15"></td>
				<td width="305" height="15"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Name</p>
				</td>
				<td width="20"></td>
				<td width="305" valign="top"><span class="bodytextsmall">
																			<xsl:value-of select="rs:data/z:row/@Name"/>
																		</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18">
					<p class="bodytextsmall">Relationship</p>
				</td>
				<td width="20" height="18"></td>
				<td width="305" height="18"><span class="bodytextsmall">
																			<xsl:value-of select="rs:data/z:row/@Relationship"/>
																		</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Address</p>
				</td>
				<td width="20"></td>
				<td width="305"><span class="bodytextsmall">
																			<xsl:value-of select="rs:data/z:row/@Addr1"/>
																		</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Postcode</p>
				</td>
				<td width="20"></td>
				<td width="305"><span class="bodytextsmall">
																			<xsl:value-of select="rs:data/z:row/@Postcode"/>
																		</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Daytime Telephone Number</p>
				</td>
				<td width="20"></td>
				<td width="305"><span class="bodytextsmall">
																			<xsl:value-of select="rs:data/z:row/@Phone1"/>
																		</span></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="305" height="18"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12">
					<p class="bodyorangelarge">References</p>
				</td>
				<td width="20" height="12"></td>
				<td width="305" height="12" valign="top"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="305" height="12"></td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="435">
			<tr>
				<td width="35"></td>
				<td>
					<p class="bodytextsmall">Please give the name and address of two referees who may be approached if required.  One should be an academic referee, the other should be either a past or present employer, or a second academic referee.</p>
				</td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="554">
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Referee 1 (Academic)</p>
				</td>
				<td width="20"></td>
				<td width="289"><input type="hidden" name="reftypeid1" value="1">		
				</input></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Name</p>
				</td>
				<td width="20"></td>
				<td width="289"><span class="bodytextsmall">
																			<xsl:for-each select="ref/rs:data/z:row[position()=1]">
																				<xsl:value-of select="@Name"/>
																			</xsl:for-each>
																		</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Occupation</p>
				</td>
				<td width="20"></td>
				<td width="289"><span class="bodytextsmall">
																			<xsl:for-each select="ref/rs:data/z:row[position()=1]">
																				<xsl:value-of select="@Occupation"/>
																			</xsl:for-each>
																		</span></td>
			</tr>
			<tr height="18">
				<td width="35" height="18"></td>
				<td width="210" height="18"></td>
				<td width="20" height="18"></td>
				<td width="289" height="18"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Address</p>
				</td>
				<td width="20"></td>
				<td width="289"><span class="bodytextsmall">
																			<xsl:for-each select="ref/rs:data/z:row[position()=1]">
																				<xsl:value-of select="@Addr1"/>
																			</xsl:for-each>
																		</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Postcode</p>
				</td>
				<td width="20"></td>
				<td width="289"><span class="bodytextsmall">
																			<xsl:for-each select="ref/rs:data/z:row[position()=1]">
																				<xsl:value-of select="@Postcode"/>
																			</xsl:for-each>
																		</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Referee 2 (Employer or Academic)</p>
				</td>
				<td width="20"></td>
				<td width="289"><input type="hidden" name="reftypeid2" value="2">		
				</input></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr height="22">
				<td width="35" height="22"></td>
				<td width="210" height="22">
					<p class="bodytextsmall">Name</p>
				</td>
				<td width="20" height="22"></td>
				<td width="289" height="22"><span class="bodytextsmall">
																			<xsl:for-each select="ref/rs:data/z:row[position()=2]">
																				<xsl:value-of select="@Name"/>
																			</xsl:for-each>
																		</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Occupation</p>
				</td>
				<td width="20"></td>
				<td width="289"><span class="bodytextsmall">
																			<xsl:for-each select="ref/rs:data/z:row[position()=2]">
																				<xsl:value-of select="@Occupation"/>
																			</xsl:for-each>
																		</span></td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="554">
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Address</p>
				</td>
				<td width="20"></td>
				<td width="289"><span class="bodytextsmall">
																			<xsl:for-each select="ref/rs:data/z:row[position()=2]">
																				<xsl:value-of select="@Addr1"/>
																			</xsl:for-each>
																		</span></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12"></td>
			</tr>
			<tr>
				<td width="35"></td>
				<td width="210">
					<p class="bodytextsmall">Postcode</p>
				</td>
				<td width="20"></td>
				<td width="289"><span class="bodytextsmall">
																			<xsl:for-each select="ref/rs:data/z:row[position()=2]">
																				<xsl:value-of select="@Postcode"/>
																			</xsl:for-each>
																		</span></td>
			</tr>
			<tr height="30">
				<td width="35" height="30"></td>
				<td width="210" height="30"></td>
				<td width="20" height="30"></td>
				<td width="289" height="30"></td>
			</tr>
			<tr height="12">
				<td width="35" height="12"></td>
				<td width="210" height="12"></td>
				<td width="20" height="12"></td>
				<td width="289" height="12">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
							<td width="20"></td>
							<td></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="64">
			<tr>
				<td><img src="media/city.gif" width="308" height="125" border="0"/></td>
			</tr>
		</table>
		<input type="hidden" name="gradid">
			<xsl:attribute name="value">
				<xsl:value-of select="rs:data/z:row/@ID"/>
			</xsl:attribute>
		</input>
		<input type="hidden" name="admin" value="1"/>
		<input type="hidden" name="action" value="nothing"/>
		<input type="hidden" name="next" value="HR"/>	
		</form>
		</xsl:for-each>
		</xsl:for-each>
	</body>

</html>
	</xsl:template>  
  
</xsl:stylesheet>




  
