.class final Lcom/tencent/mm/pluginsdk/ui/applet/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/applet/ai;


# instance fields
.field final synthetic fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/applet/s;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final kl(I)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->a(Lcom/tencent/mm/pluginsdk/ui/applet/s;)Lcom/tencent/mm/pluginsdk/ui/applet/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->kn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->a(Lcom/tencent/mm/pluginsdk/ui/applet/s;)Lcom/tencent/mm/pluginsdk/ui/applet/aa;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/aa;->je(I)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->ko(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    iget-boolean v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/w;->fog:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->km(I)Z

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->asa()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->kp(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->a(Lcom/tencent/mm/pluginsdk/ui/applet/s;)Lcom/tencent/mm/pluginsdk/ui/applet/aa;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/aa;->jd(I)V

    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->asa()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->kp(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->a(Lcom/tencent/mm/pluginsdk/ui/applet/s;)Lcom/tencent/mm/pluginsdk/ui/applet/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/aa;->aiC()V

    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->asa()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->kp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/u;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->a(Lcom/tencent/mm/pluginsdk/ui/applet/s;)Lcom/tencent/mm/pluginsdk/ui/applet/aa;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/aa;->jf(I)V

    goto :goto_0
.end method
