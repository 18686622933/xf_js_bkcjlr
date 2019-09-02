<%@ Page Language="vb" AutoEventWireup="false" Codebehind="xf_js_bkcjlr.aspx.vb" Inherits="zjdx.xf_js_bkcjlr" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML lang="gb2312">
	<HEAD>
		<title>现代教学管理信息系统</title><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta http-equiv="Content-Language" content="gb2312">
		<meta content="all" name="robots">
		<meta content="作者信息" name="author">
		<meta content="版权信息" name="Copyright">
		<meta content="站点介绍" name="description">
		<meta content="站点关键词" name="keywords">
		<LINK href="style/base/favicon.ico" type="image/x-icon" rel="icon">
			<LINK media="all" href="style/base/jw.css" type="text/css" rel="stylesheet">
				<LINK media="all" href="style/standard/jw.css" type="text/css" rel="stylesheet">
					<SCRIPT language="javascript">
				
		    function button5_click(){
		        if (confirm("成绩为空的不能提交到正式成绩库，提交以后下次登陆将不能再修改该成绩\n如果只需要保存成绩，请点击保存按钮。\n单击“确定”提交成绩。单击“取消”停止提交。")==true)
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
		            if (confirm("您输入的成绩尚未保存，你确定不保存就退出吗？\n单击“确定”关闭页面。单击“取消”提交未保存的成绩。") == false){
		                __doPostBack('Button1','');
		                return;
		            }
		        }
		        
		        alert("成绩输入完成，谢谢！");
		        window.close();
		    }
		    function cjbc(){
				var i;
				var eleNum;
				var flag = document.getElementById("jfz").value;
				if(flag == "百分制"){
					eleNum = 0;
				}else{
					eleNum = 1;
				}		    
				for (i=1;i<document.getElementById("DataGrid1").rows.length;i++){
					if (document.getElementById("DataGrid1").rows[i].getElementsByTagName("input")[eleNum].value == ""){
						alert("有空成绩不能提交！");
						return false;
						}
					}
		       return true
		    }
		    
		    function mode(e){
				var obj = document.getElementById('DataGrid1');
				var Leb=obj.rows[0].cells.length-1;
				if(Leb == 12){
					if(obj.rows[0].cells[12].innerText == '限制分数'){
						//var row = e.parentElement.parentElement.cells[12].innerText;
						var row = e.parentElement.parentElement;
						if(row.cells[12].innerText.replace(/(^\s*)|(\s*$)/g, "").length != 0){
							var bk = row.cells[7].children[0].value;
							var xzfs = row.cells[12].innerText;
							if(bk>xzfs){
								alert('输入的补考成绩大于限制分数：' + xzfs + "分");
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
				<!-- 按钮 -->
				<div class="buttonbox"></div>
				<!-- 按钮 -->
				<!-- 过滤条件开始 -->
				<div class="searchbox">
					<p class="search_con"><ASP:LABEL id="jsxm" runat="server"></ASP:LABEL>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						课程名称：
						<ASP:LABEL id="kcmc" runat="server"></ASP:LABEL><ASP:LABEL id="kcdm" runat="server" Visible="False"></ASP:LABEL><ASP:LABEL id="sfbybk" runat="server" Visible="False"></ASP:LABEL><ASP:LABEL id="lrbkxnxq" runat="server" Visible="False"></ASP:LABEL><ASP:LABEL id="zghkc" runat="server" Visible="False"></ASP:LABEL>&nbsp;&nbsp;&nbsp;&nbsp;
						<ASP:TEXTBOX id="txtChanged" style="DISPLAY: none" Text="0" Runat="server"></ASP:TEXTBOX></p>
					<p class="search_title"><em></em></p>
				</div>
				<!-- 过滤条件结束 -->
				<div class="searchbox" style="CLEAR: right">
					<p class="search_con">记分制：
						<ASP:DROPDOWNLIST id="jfz" runat="server" AutoPostBack="True">
							<ASP:LISTITEM Value="百分制">百分制</ASP:LISTITEM>
							<ASP:LISTITEM Value="五级制">五级制</ASP:LISTITEM>
							<ASP:LISTITEM Value="二级制">二级制</ASP:LISTITEM>
							<ASP:LISTITEM Value="十一级制">十一级制</ASP:LISTITEM>
						</ASP:DROPDOWNLIST>
						<asp:button id="Button6"  Visible ="False" runat="server" Text="分数转换成五级制" CssClass="button"></asp:button></p>
					<p class="search_title"><em></em></p>
				</div>
				<div class="searchbox" id="divBl" style="CLEAR: both; DISPLAY: none" runat="server">
					<p class="search_con"><asp:label id="Label1" runat="server">平时</asp:label><ASP:LABEL id="psb" runat="server" Width="28px">20</ASP:LABEL>
						<asp:TextBox id="tbPsb" runat="server" Width="28px" Visible="false">20</asp:TextBox>%
						<asp:label id="Label_qz" runat="server">期中</asp:label><ASP:LABEL id="qzb" runat="server" AutoPostBack="True" Width="28px">0</ASP:LABEL>
						<asp:TextBox style="Z-INDEX: 0" id="tbQzb" runat="server" Width="28px" Visible="false">0</asp:TextBox><asp:label id="Label_qzb" runat="server">%</asp:label><asp:label id="Label3" runat="server">期末</asp:label><ASP:LABEL id="qmb" runat="server" Width="28px">80</ASP:LABEL>
						<asp:TextBox style="Z-INDEX: 0" id="tbQmb" runat="server" Width="28px" Visible="false">80</asp:TextBox>%
						<asp:label id="Label4" runat="server">实验</asp:label><ASP:LABEL id="syb" runat="server" AutoPostBack="True" Width="28px">0</ASP:LABEL>
						<asp:TextBox style="Z-INDEX: 0" id="tbSyb" runat="server" Width="28px" Visible="false">0</asp:TextBox><asp:label id="Label5" runat="server">%</asp:label><asp:label id="lblkhfs" runat="server" Visible="False"></asp:label></p>
					<p class="search_title"><em></em></p>
				</div>
				<div class="searchbox" id="divXz" style="WIDTH: 820px; CLEAR: both" runat="server" visible="false">
					<p class="search_con"><font color="red">您可以选择在此下载学生空白成绩单，在下载下来的Excel中填写完学生成绩，再载入页面(载入前请先选择记分制);载入后再选择备注和保存成绩(注：请不要对下载下来的成绩单作除登记成绩外的其他修改和变动)<br>
							请使用Microsoft Office 2003 以上版本编辑填写学生成绩，其他excel工具如WPS等，系统将无法识别。请每30分钟至少保存一次成绩。</font>
						<br>
						<asp:button id="btnxz" runat="server" Text="学生名单下载" CssClass="button"></asp:button>&nbsp;&nbsp;&nbsp;Excel成绩文件：<INPUT id="lofile" type="file" name="lofile" runat="server" cssclass="text_nor">
						<asp:button id="btnSc" runat="server" Text="载入" Width="56px" CssClass="button"></asp:button></p>
					<p class="search_title"><em></em></p>
				</div>
				<p class="toolbox_fot"><em></em></p>
			</div>
			<!-- 多功能操作区 -->
			<!-- 内容显示区开始 -->
			<div class="main_box">
				<div class="mid_box">
					<div class="title">
						<p style="TEXT-ALIGN:right">
							<asp:label id="lblzdcjTs" runat="server" ForeColor="red"></asp:label>
							<!-- 查询得到的数据量显示区域 --></p>
					</div>
					<!-- From内容 --><span class="formbox"><ASP:DATAGRID id="DataGrid1" runat="server" Width="100%" CssClass="datelist" AutoGenerateColumns="False"
							GridLines="None" CellPadding="3">
							<AlternatingItemStyle CssClass="alt"></AlternatingItemStyle>
							<HeaderStyle CssClass="datelisthead"></HeaderStyle>
							<Columns>
								<asp:BoundColumn Visible="False" DataField="xkkh" HeaderText="xkkh"></asp:BoundColumn>
								<asp:BoundColumn Visible="False" DataField="kcmc" HeaderText="课程名称"></asp:BoundColumn>
								<asp:BoundColumn DataField="bjmc" HeaderText="班级名称"></asp:BoundColumn>
								<asp:BoundColumn DataField="xh" HeaderText="学号"></asp:BoundColumn>
								<asp:BoundColumn DataField="xm" HeaderText="姓名">
									<ItemStyle Wrap="False"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="pscj" HeaderText="平时成绩"></asp:BoundColumn>
								<asp:BoundColumn DataField="qzcj" HeaderText="期中成绩"></asp:BoundColumn>
								<asp:BoundColumn DataField="qmcj" HeaderText="期末成绩"></asp:BoundColumn>
								<asp:BoundColumn DataField="sycj" HeaderText="实验成绩"></asp:BoundColumn>
								<asp:TemplateColumn HeaderText="补考成绩">
									<ItemTemplate>
										<asp:textbox style="width:75px" id=bk onblur="Input_blur(this);" onfocus=Input_focus(this) runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.bkcj") %>' Width="68" CssClass="text_nor" tabindex="1">
										</asp:textbox>
										<asp:textbox style="width:75px" id="bk1" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container, "DataItem.bkcj") %>' Width="68px" TabIndex=0>
										</asp:textbox>
										<asp:dropdownlist style="width:75px" id="Dbk" runat="server" tabindex="1"></asp:dropdownlist>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="总评成绩">
									<ItemTemplate>
										<asp:Label id="lblcj" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.cj") %>'>
										</asp:Label>
										<asp:TextBox id="txtcj" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container, "DataItem.cj") %>' Width="68px" TabIndex=0>
										</asp:TextBox>
										<asp:dropdownlist id="Dcj" runat="server" Visible="false" TabIndex="0"></asp:dropdownlist>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="正考备注">
									<ItemTemplate>
										<asp:textbox id=BZ CssClass="text_nor" style="display:none" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.BZ") %>' Width="81px">
										</asp:textbox>
										<asp:label id="lblbz" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.BZ") %>' Width="81px">
										</asp:label>
									</ItemTemplate>
									<EditItemTemplate>
									</EditItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="补考备注">
									<ItemTemplate>
										<FONT face="宋体">
											<asp:DropDownList style="width:75px" id="Dbz" runat="server" Width="59px" Enabled = "False" TabIndex="2"></asp:DropDownList></FONT>
									</ItemTemplate>
									<FooterTemplate>
									</FooterTemplate>
								</asp:TemplateColumn>
								<asp:BoundColumn Visible="False" DataField="bkcj_bz"></asp:BoundColumn>
								<ASP:BoundColumn DataField="sqyy" HeaderText="正考缓考理由" Visible="False"></ASP:BoundColumn>
								<ASP:BoundColumn DataField="xzfs" HeaderText="限制分数" Visible="False"></ASP:BoundColumn>
								<ASP:BoundColumn HeaderText="学生类别" Visible="False"></ASP:BoundColumn>
							</Columns>
						</ASP:DATAGRID>
					</span>
					<div class="footbox"><em class="footbox_con"><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><span class="pagination"></span>
							<div style="PADDING-LEFT: 10px" align="left"><asp:label id="lblSsmzMsg" runat="server" Visible="False" ForeColor="Red" Font-Bold="True">加粗表示少数民族聚集地学生，根据有关规定成绩会进行折算</asp:label></div>
							<span class="footbutton"><asp:checkbox id="CheckBox1" runat="server" Text="打钩" ForeColor="Red" TabIndex="5"></asp:checkbox><asp:label id="Label2" runat="server" Width="160px" ForeColor="Red">如果窗口被屏蔽打上钩再打印</asp:label></FONT><input id="btpost" value=" 保 存 " type="button" name="btpost" class="button" runat="server"><ASP:BUTTON id="btnClear" runat="server" Text="清空保存" CssClass="button" TabIndex="3"></ASP:BUTTON><ASP:BUTTON id="Button1" runat="server" Text="保  存" CssClass="button" TabIndex="3"></ASP:BUTTON><ASP:BUTTON id="Button4" runat="server" Text="提  交" CssClass="button" TabIndex="4"></ASP:BUTTON><asp:button id="btn_cxlr" Runat="server" Visible="False" CssClass="button" Text="重新录入申请"></asp:button>
									<asp:label id="lblxy" runat="server" Visible="false">学院：</asp:label><asp:dropdownlist id="ddl_xy" runat="server" Visible="False"></asp:dropdownlist>
									<asp:label id="lblzy" runat="server" Visible="false">专业：</asp:label><asp:dropdownlist id="ddlzy" runat="server" Visible="False"></asp:dropdownlist>
									<asp:label id="lblnj" runat="server" Visible="false">年级：</asp:label><asp:dropdownlist id="ddlnj" runat="server" Visible="False"></asp:dropdownlist>
									<asp:label id="lblxzb" runat="server" Visible="false">行政班：</asp:label><asp:DropDownList id="ddlXzb" runat="server" Visible="False"></asp:DropDownList>
								<ASP:BUTTON id="Button3" runat="server" Text="打  印" CssClass="button"></ASP:BUTTON>
								<ASP:BUTTON id="Button2" style="DISPLAY: none" runat="server" Text="关  闭" CssClass="button"></ASP:BUTTON></span>
							<!-- 底部按钮位置 --><asp:label id="Label_bz1" runat="server" Visible="false">教师签名：               教研室主任签名：               课程考核时间：      年  月  日</asp:label><br>
							<asp:label id="Label_bz2" runat="server" Visible="false">说明：本表由阅卷教师在课程考核结束后交开课院（系）教务办留存。</asp:label></FONT></em></div>
				</div>
			</div>
		</FORM>
	</BODY>
</HTML>
1
