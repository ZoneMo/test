.class final Lcom/tencent/mm/pluginsdk/ui/applet/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/applet/aj;


# instance fields
.field final synthetic fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/applet/s;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/t;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final jc(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/t;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    iget-boolean v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/w;->fog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/t;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->kp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v3

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/t;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->km(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "MicroMsg.ContactListArchor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onItemLongClick "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
