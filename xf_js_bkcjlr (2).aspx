<%@ Page Language="vb" AutoEventWireup="false" Codebehind="xf_js_bkcjlr.aspx.vb" Inherits="zjdx.xf_js_bkcjlr" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML lang="gb2312">
	<HEAD>
		<title>�ִ���ѧ������Ϣϵͳ</title><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta http-equiv="Content-Language" content="gb2312">
		<meta content="all" name="robots">
		<meta content="������Ϣ" name="author">
		<meta content="��Ȩ��Ϣ" name="Copyright">
		<meta content="վ�����" name="description">
		<meta content="վ��ؼ���" name="keywords">
		<LINK href="style/base/favicon.ico" type="image/x-icon" rel="icon">
			<LINK media="all" href="style/base/jw.css" type="text/css" rel="stylesheet">
				<LINK media="all" href="style/standard/jw.css" type="text/css" rel="stylesheet">
					<SCRIPT language="javascript">
				
		    function button5_click(){
		        if (confirm("�ɼ�Ϊ�յĲ����ύ����ʽ�ɼ��⣬�ύ�Ժ��´ε�½���������޸ĸóɼ�\n���ֻ��Ҫ����ɼ����������水ť��\n������ȷ�����ύ�ɼ���������ȡ����ֹͣ�ύ��")==true)
		            __doPostBack('Button5','')
		    }	  
		    
		    function Input_focus(e){
		        if (e.tagName == "INPUT")
		            e.parentElement.parentElement.bgColor = "#DCDCDC"
		        else
		            e.parentElement.parentElement.parentElement.bgColor ="#DCDCDC"
		    }
		    
		    function Input_blur(e){
		        if (e.tagName == "INPUT")
		            e.parentElement.parentElement.bgColor = ""
		        else
		            e.parentElement.parentElement.parentElement.bgColor =""
		    }		    
		     
		    function win_unload(){
		        if (document.all.txtChanged.value == "1" && document.all.Button1.disabled == ""){
		            if (confirm("������ĳɼ���δ���棬��ȷ����������˳���\n������ȷ�����ر�ҳ�档������ȡ�����ύδ����ĳɼ���") == false){
		                __doPostBack('Button1','');
		                return;
		            }
		        }
		        
		        alert("�ɼ�������ɣ�лл��");
		        window.close();
		    }
		    function cjbc(){
				var i;
				var eleNum;
				var flag = document.getElementById("jfz").value;
				if(flag == "�ٷ���"){
					eleNum = 0;
				}else{
					eleNum = 1;
				}		    
				for (i=1;i<document.getElementById("DataGrid1").rows.length;i++){
					if (document.getElementById("DataGrid1").rows[i].getElementsByTagName("input")[eleNum].value == ""){
						alert("�пճɼ������ύ��");
						return false;
						}
					}
		       return true
		    }
		    
		    function mode(e){
				var obj = document.getElementById('DataGrid1');
				var Leb=obj.rows[0].cells.length-1;
				if(Leb == 12){
					if(obj.rows[0].cells[12].innerText == '���Ʒ���'){
						//var row = e.parentElement.parentElement.cells[12].innerText;
						var row = e.parentElement.parentElement;
						if(row.cells[12].innerText.replace(/(^\s*)|(\s*$)/g, "").length != 0){
							var bk = row.cells[7].children[0].value;
							var xzfs = row.cells[12].innerText;
							if(bk>xzfs){
								alert('����Ĳ����ɼ��������Ʒ�����' + xzfs + "��");
								row.cells[7].children[0].value=xzfs;
							}
						}	
					}
				}
					
		    };
		    
					</SCRIPT>
	</HEAD>
	<BODY onload="<%=Message%>">
		<FORM id="Form1" onkeydown="if(event.keyCode==13)event.keyCode=9" method="post" runat="server">
			<div class="toolbox">
				<!-- ��ť -->
				<div class="buttonbox"></div>
				<!-- ��ť -->
				<!-- ����������ʼ -->
				<div class="searchbox">
					<p class="search_con"><ASP:LABEL id="jsxm" runat="server"></ASP:LABEL>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						�γ����ƣ�
						<ASP:LABEL id="kcmc" runat="server"></ASP:LABEL><ASP:LABEL id="kcdm" runat="server" Visible="False"></ASP:LABEL><ASP:LABEL id="sfbybk" runat="server" Visible="False"></ASP:LABEL><ASP:LABEL id="lrbkxnxq" runat="server" Visible="False"></ASP:LABEL><ASP:LABEL id="zghkc" runat="server" Visible="False"></ASP:LABEL>&nbsp;&nbsp;&nbsp;&nbsp;
						<ASP:TEXTBOX id="txtChanged" style="DISPLAY: none" Text="0" Runat="server"></ASP:TEXTBOX></p>
					<p class="search_title"><em></em></p>
				</div>
				<!-- ������������ -->
				<div class="searchbox" style="CLEAR: right">
					<p class="search_con">�Ƿ��ƣ�
						<ASP:DROPDOWNLIST id="jfz" runat="server" AutoPostBack="True">
							<ASP:LISTITEM Value="�ٷ���">�ٷ���</ASP:LISTITEM>
							<ASP:LISTITEM Value="�弶��">�弶��</ASP:LISTITEM>
							<ASP:LISTITEM Value="������">������</ASP:LISTITEM>
							<ASP:LISTITEM Value="ʮһ����">ʮһ����</ASP:LISTITEM>
						</ASP:DROPDOWNLIST>
						<asp:button id="Button6"  Visible ="False" runat="server" Text="����ת�����弶��" CssClass="button"></asp:button></p>
					<p class="search_title"><em></em></p>
				</div>
				<div class="searchbox" id="divBl" style="CLEAR: both; DISPLAY: none" runat="server">
					<p class="search_con"><asp:label id="Label1" runat="server">ƽʱ</asp:label><ASP:LABEL id="psb" runat="server" Width="28px">20</ASP:LABEL>
						<asp:TextBox id="tbPsb" runat="server" Width="28px" Visible="false">20</asp:TextBox>%
						<asp:label id="Label_qz" runat="server">����</asp:label><ASP:LABEL id="qzb" runat="server" AutoPostBack="True" Width="28px">0</ASP:LABEL>
						<asp:TextBox style="Z-INDEX: 0" id="tbQzb" runat="server" Width="28px" Visible="false">0</asp:TextBox><asp:label id="Label_qzb" runat="server">%</asp:label><asp:label id="Label3" runat="server">��ĩ</asp:label><ASP:LABEL id="qmb" runat="server" Width="28px">80</ASP:LABEL>
						<asp:TextBox style="Z-INDEX: 0" id="tbQmb" runat="server" Width="28px" Visible="false">80</asp:TextBox>%
						<asp:label id="Label4" runat="server">ʵ��</asp:label><ASP:LABEL id="syb" runat="server" AutoPostBack="True" Width="28px">0</ASP:LABEL>
						<asp:TextBox style="Z-INDEX: 0" id="tbSyb" runat="server" Width="28px" Visible="false">0</asp:TextBox><asp:label id="Label5" runat="server">%</asp:label><asp:label id="lblkhfs" runat="server" Visible="False"></asp:label></p>
					<p class="search_title"><em></em></p>
				</div>
				<div class="searchbox" id="divXz" style="WIDTH: 820px; CLEAR: both" runat="server" visible="false">
					<p class="search_con"><font color="red">������ѡ���ڴ�����ѧ���հ׳ɼ�����������������Excel����д��ѧ���ɼ���������ҳ��(����ǰ����ѡ��Ƿ���);�������ѡ��ע�ͱ���ɼ�(ע���벻Ҫ�����������ĳɼ��������Ǽǳɼ���������޸ĺͱ䶯)<br>
							��ʹ��Microsoft Office 2003 ���ϰ汾�༭��дѧ���ɼ�������excel������WPS�ȣ�ϵͳ���޷�ʶ����ÿ30�������ٱ���һ�γɼ���</font>
						<br>
						<asp:button id="btnxz" runat="server" Text="ѧ����������" CssClass="button"></asp:button>&nbsp;&nbsp;&nbsp;Excel�ɼ��ļ���<INPUT id="lofile" type="file" name="lofile" runat="server" cssclass="text_nor">
						<asp:button id="btnSc" runat="server" Text="����" Width="56px" CssClass="button"></asp:button></p>
					<p class="search_title"><em></em></p>
				</div>
				<p class="toolbox_fot"><em></em></p>
			</div>
			<!-- �๦�ܲ����� -->
			<!-- ������ʾ����ʼ -->
			<div class="main_box">
				<div class="mid_box">
					<div class="title">
						<p style="TEXT-ALIGN:right">
							<asp:label id="lblzdcjTs" runat="server" ForeColor="red"></asp:label>
							<!-- ��ѯ�õ�����������ʾ���� --></p>
					</div>
					<!-- From���� --><span class="formbox"><ASP:DATAGRID id="DataGrid1" runat="server" Width="100%" CssClass="datelist" AutoGenerateColumns="False"
							GridLines="None" CellPadding="3">
							<AlternatingItemStyle CssClass="alt"></AlternatingItemStyle>
							<HeaderStyle CssClass="datelisthead"></HeaderStyle>
							<Columns>
								<asp:BoundColumn Visible="False" DataField="xkkh" HeaderText="xkkh"></asp:BoundColumn>
								<asp:BoundColumn Visible="False" DataField="kcmc" HeaderText="�γ�����"></asp:BoundColumn>
								<asp:BoundColumn DataField="bjmc" HeaderText="�༶����"></asp:BoundColumn>
								<asp:BoundColumn DataField="xh" HeaderText="ѧ��"></asp:BoundColumn>
								<asp:BoundColumn DataField="xm" HeaderText="����">
									<ItemStyle Wrap="False"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="pscj" HeaderText="ƽʱ�ɼ�"></asp:BoundColumn>
								<asp:BoundColumn DataField="qzcj" HeaderText="���гɼ�"></asp:BoundColumn>
								<asp:BoundColumn DataField="qmcj" HeaderText="��ĩ�ɼ�"></asp:BoundColumn>
								<asp:BoundColumn DataField="sycj" HeaderText="ʵ��ɼ�"></asp:BoundColumn>
								<asp:TemplateColumn HeaderText="�����ɼ�">
									<ItemTemplate>
										<asp:textbox style="width:75px" id=bk onblur="Input_blur(this);" onfocus=Input_focus(this) runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.bkcj") %>' Width="68" CssClass="text_nor" tabindex="1">
										</asp:textbox>
										<asp:textbox style="width:75px" id="bk1" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container, "DataItem.bkcj") %>' Width="68px" TabIndex=0>
										</asp:textbox>
										<asp:dropdownlist style="width:75px" id="Dbk" runat="server" tabindex="1"></asp:dropdownlist>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="�����ɼ�">
									<ItemTemplate>
										<asp:Label id="lblcj" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.cj") %>'>
										</asp:Label>
										<asp:TextBox id="txtcj" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container, "DataItem.cj") %>' Width="68px" TabIndex=0>
										</asp:TextBox>
										<asp:dropdownlist id="Dcj" runat="server" Visible="false" TabIndex="0"></asp:dropdownlist>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="������ע">
									<ItemTemplate>
										<asp:textbox id=BZ CssClass="text_nor" style="display:none" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.BZ") %>' Width="81px">
										</asp:textbox>
										<asp:label id="lblbz" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.BZ") %>' Width="81px">
										</asp:label>
									</ItemTemplate>
									<EditItemTemplate>
									</EditItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="������ע">
									<ItemTemplate>
										<FONT face="����">
											<asp:DropDownList style="width:75px" id="Dbz" runat="server" Width="59px" Enabled = "False" TabIndex="2"></asp:DropDownList></FONT>
									</ItemTemplate>
									<FooterTemplate>
									</FooterTemplate>
								</asp:TemplateColumn>
								<asp:BoundColumn Visible="False" DataField="bkcj_bz"></asp:BoundColumn>
								<ASP:BoundColumn DataField="sqyy" HeaderText="������������" Visible="False"></ASP:BoundColumn>
								<ASP:BoundColumn DataField="xzfs" HeaderText="���Ʒ���" Visible="False"></ASP:BoundColumn>
								<ASP:BoundColumn HeaderText="ѧ�����" Visible="False"></ASP:BoundColumn>
							</Columns>
						</ASP:DATAGRID>
					</span>
					<div class="footbox"><em class="footbox_con"><FONT face="����"></FONT><FONT face="����"></FONT><FONT face="����"></FONT><FONT face="����"></FONT><FONT face="����"></FONT><FONT face="����"></FONT><FONT face="����"></FONT><FONT face="����"></FONT><span class="pagination"></span>
							<div style="PADDING-LEFT: 10px" align="left"><asp:label id="lblSsmzMsg" runat="server" Visible="False" ForeColor="Red" Font-Bold="True">�Ӵֱ�ʾ��������ۼ���ѧ���������йع涨�ɼ����������</asp:label></div>
							<span class="footbutton"><asp:checkbox id="CheckBox1" runat="server" Text="��" ForeColor="Red" TabIndex="5"></asp:checkbox><asp:label id="Label2" runat="server" Width="160px" ForeColor="Red">������ڱ����δ��Ϲ��ٴ�ӡ</asp:label></FONT><input id="btpost" value=" �� �� " type="button" name="btpost" class="button" runat="server"><ASP:BUTTON id="btnClear" runat="server" Text="��ձ���" CssClass="button" TabIndex="3"></ASP:BUTTON><ASP:BUTTON id="Button1" runat="server" Text="��  ��" CssClass="button" TabIndex="3"></ASP:BUTTON><ASP:BUTTON id="Button4" runat="server" Text="��  ��" CssClass="button" TabIndex="4"></ASP:BUTTON><asp:button id="btn_cxlr" Runat="server" Visible="False" CssClass="button" Text="����¼������"></asp:button>
									<asp:label id="lblxy" runat="server" Visible="false">ѧԺ��</asp:label><asp:dropdownlist id="ddl_xy" runat="server" Visible="False"></asp:dropdownlist>
									<asp:label id="lblzy" runat="server" Visible="false">רҵ��</asp:label><asp:dropdownlist id="ddlzy" runat="server" Visible="False"></asp:dropdownlist>
									<asp:label id="lblnj" runat="server" Visible="false">�꼶��</asp:label><asp:dropdownlist id="ddlnj" runat="server" Visible="False"></asp:dropdownlist>
									<asp:label id="lblxzb" runat="server" Visible="false">�����ࣺ</asp:label><asp:DropDownList id="ddlXzb" runat="server" Visible="False"></asp:DropDownList>
								<ASP:BUTTON id="Button3" runat="server" Text="��  ӡ" CssClass="button"></ASP:BUTTON>
								<ASP:BUTTON id="Button2" style="DISPLAY: none" runat="server" Text="��  ��" CssClass="button"></ASP:BUTTON></span>
							<!-- �ײ���ťλ�� --><asp:label id="Label_bz1" runat="server" Visible="false">��ʦǩ����               ����������ǩ����               �γ̿���ʱ�䣺      ��  ��  ��</asp:label><br>
							<asp:label id="Label_bz2" runat="server" Visible="false">˵�����������ľ��ʦ�ڿγ̿��˽����󽻿���Ժ��ϵ����������档</asp:label></FONT></em></div>
				</div>
			</div>
		</FORM>
	</BODY>
</HTML>
