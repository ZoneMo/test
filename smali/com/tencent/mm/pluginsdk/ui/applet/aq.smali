.class final Lcom/tencent/mm/pluginsdk/ui/applet/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic foZ:Lcom/tencent/mm/pluginsdk/ui/applet/ap;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/applet/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/aq;->foZ:Lcom/tencent/mm/pluginsdk/ui/applet/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/aq;->foZ:Lcom/tencent/mm/pluginsdk/ui/applet/ap;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/ap;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->d(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/aq;->foZ:Lcom/tencent/mm/pluginsdk/ui/applet/ap;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/ap;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/aq;->foZ:Lcom/tencent/mm/pluginsdk/ui/applet/ap;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/applet/ap;->foY:Lcom/tencent/mm/pluginsdk/ui/applet/an;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->e(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->a(Lcom/tencent/mm/pluginsdk/ui/applet/an;Ljava/lang/String;)V

    .line 151
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
