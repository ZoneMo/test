.class final Lcom/tencent/mm/pluginsdk/ui/applet/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/applet/an;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ar;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ar;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->b(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ar;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->b(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->dismiss()V

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ar;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->c(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/ui/base/x;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ar;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->f(Lcom/tencent/mm/pluginsdk/ui/applet/an;)V

    .line 167
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ar;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->g(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/pluginsdk/ui/applet/au;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ar;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->g(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/pluginsdk/ui/applet/au;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/au;->cp(Z)V

    .line 170
    :cond_1
    return-void
.end method
