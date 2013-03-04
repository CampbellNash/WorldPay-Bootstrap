<%-- SPG:

This HTML file has been associated with a SharePoint Page Layout (.aspx file) carrying the same name.  While the files remain associated, you will not be allowed to edit the .aspx file, and any rename, move, or deletion operations will be reciprocated.

To build the page layout directly from this HTML file, simply fill in the contents of content placeholders.

 --%>
<%@Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage, Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register TagPrefix="PageFieldFieldValue" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register TagPrefix="Publishing" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<asp:Content runat="server" ContentPlaceHolderID="PlaceHolderPageTitle">
            <SharePoint:ProjectProperty Property="Title" runat="server">
            </SharePoint:ProjectProperty>
            
            
            <PageFieldFieldValue:FieldValue FieldName="fa564e0f-0c70-4ab9-b863-0177e6ddd247" runat="server">
            </PageFieldFieldValue:FieldValue>
            
        </asp:Content><asp:Content runat="server" ContentPlaceHolderID="PlaceHolderAdditionalPageHead">
            
            
            
            <Publishing:EditModePanel runat="server" id="editmodestyles">
                <SharePoint:CssRegistration name="&lt;% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %&gt;" After="&lt;% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %&gt;" runat="server">
                </SharePoint:CssRegistration>
            </Publishing:EditModePanel>
            
        </asp:Content><asp:Content runat="server" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea">
            
            
            <PageFieldFieldValue:FieldValue FieldName="fa564e0f-0c70-4ab9-b863-0177e6ddd247" runat="server">
            </PageFieldFieldValue:FieldValue>
            
        </asp:Content><asp:Content runat="server" ContentPlaceHolderID="PlaceHolderMain">
            <!-- First Row-->
			<div class="row-fluid">
                <div class="span12">
                    <!-- Main Banner Image - place in a paragraph to enforce the modular scale spacing -->
                    
				    
				    <div>
				        <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow1" FrameType="None" Orientation="Vertical">
				            <ZoneTemplate></ZoneTemplate>
				        </WebPartPages:WebPartZone>
				    </div>
				    

                </div>
            </div>
            <!-- Second Row-->
            <div class="row-fluid">
                <div class="span8">
                     
				    
				    <div>
				        <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow2Column1" FrameType="None" Orientation="Vertical">
				            <ZoneTemplate></ZoneTemplate>
				        </WebPartPages:WebPartZone>
				    </div>
				    
                </div>
                <div class="span4">
                    <!-- Gallery sidebar with a block grid. Note: block grid items should be the same size for optimal results -->
                    
				    
				    <div>
				        <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow2Column2" FrameType="None" Orientation="Vertical">
				            <ZoneTemplate></ZoneTemplate>
				        </WebPartPages:WebPartZone>
				    </div>
				    
                </div>
            </div>
            <!-- Third Row-->
            <div class="row-fluid">
                <div class="span12">
                    <div class="panel">
                         
						    
						    <div>
						        <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow3Column1" FrameType="None" Orientation="Vertical">
						            <ZoneTemplate></ZoneTemplate>
						        </WebPartPages:WebPartZone>
						    </div>
				    
                        <div class="row-fluid">
                            <div class="span9">
                                 
							     
							     <div>
							        <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow3Column2Sub1" FrameType="None" Orientation="Vertical">
							            <ZoneTemplate></ZoneTemplate>
							        </WebPartPages:WebPartZone>
							    </div>
							    
                            </div>
                            <div class="span3">
                                 
							     
							     <div>
							        <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow3Column2Sub2" FrameType="None" Orientation="Vertical">
							            <ZoneTemplate></ZoneTemplate>
							        </WebPartPages:WebPartZone>
							    </div>
							    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Content>