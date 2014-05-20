.class final Lcom/tencent/mm/pluginsdk/ui/applet/ap;
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
    .line 135
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ap;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ap;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->b(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ap;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->b(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->dismiss()V

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ap;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->c(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/ui/base/x;

    .line 144
    :cond_0
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/applet/aq;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/aq;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/ap;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 155
    return-void
.end method
