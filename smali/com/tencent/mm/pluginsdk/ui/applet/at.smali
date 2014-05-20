.class final Lcom/tencent/mm/pluginsdk/ui/applet/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/applet/an;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/at;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/at;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->f(Lcom/tencent/mm/pluginsdk/ui/applet/an;)V

    .line 196
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/at;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->g(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/pluginsdk/ui/applet/au;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/at;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->g(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/pluginsdk/ui/applet/au;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/au;->cp(Z)V

    .line 199
    :cond_0
    return-void
.end method
