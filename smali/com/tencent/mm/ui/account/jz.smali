.class final Lcom/tencent/mm/ui/account/jz;
.super Lcom/tencent/mm/ui/applet/n;
.source "SourceFile"


# instance fields
.field final synthetic cmw:Lcom/tencent/mm/n/x;

.field final synthetic gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;Lcom/tencent/mm/n/x;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/tencent/mm/ui/account/jz;->gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/jz;->cmw:Lcom/tencent/mm/n/x;

    invoke-direct {p0}, Lcom/tencent/mm/ui/applet/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final aFM()V
    .locals 8

    .prologue
    .line 918
    iget-object v0, p0, Lcom/tencent/mm/ui/account/jz;->gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->SM()V

    .line 919
    iget-object v0, p0, Lcom/tencent/mm/ui/account/jz;->gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->e(Lcom/tencent/mm/ui/account/RegSetInfoUI;)I

    move-result v3

    .line 920
    iget-object v0, p0, Lcom/tencent/mm/ui/account/jz;->gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->f(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Ljava/lang/String;

    move-result-object v1

    .line 921
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v2, 0x1ad

    iget-object v4, p0, Lcom/tencent/mm/ui/account/jz;->gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;

    invoke-virtual {v0, v2, v4}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 922
    new-instance v0, Lcom/tencent/mm/modelfriend/an;

    iget-object v2, p0, Lcom/tencent/mm/ui/account/jz;->gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->g(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v5, ""

    iget-object v6, p0, Lcom/tencent/mm/ui/account/jz;->cmw:Lcom/tencent/mm/n/x;

    check-cast v6, Lcom/tencent/mm/modelfriend/an;

    invoke-virtual {v6}, Lcom/tencent/mm/modelfriend/an;->zS()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/modelfriend/an;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 924
    return-void
.end method

.method protected final onStart()V
    .locals 0

    .prologue
    .line 929
    return-void
.end method
