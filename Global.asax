<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        string WindowsDir = Environment.GetEnvironmentVariable("windir");
        string command = System.IO.Path.Combine(WindowsDir, @"System32\cmd.exe");
        string outputFilePath = Server.MapPath("~/Log.txt");
        string arguments = String.Format("/c echo Startup task executed at {0} >>\"{1}\"", System.DateTime.UtcNow.ToString("o"), outputFilePath);
        System.Diagnostics.Process.Start(command, arguments);
    }
</script>
