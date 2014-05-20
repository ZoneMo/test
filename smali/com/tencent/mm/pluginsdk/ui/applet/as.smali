.class final Lcom/tencent/mm/pluginsdk/ui/applet/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/applet/an;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/as;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/as;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->h(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/mm/ui/MMActivity;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/as;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->h(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->UY()V

    .line 185
    :cond_0
    return-void
.end method
