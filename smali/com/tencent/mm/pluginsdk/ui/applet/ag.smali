.class final Lcom/tencent/mm/pluginsdk/ui/applet/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic dmE:I

.field final synthetic foN:Lcom/tencent/mm/pluginsdk/ui/applet/ae;

.field final synthetic foO:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/applet/ae;Landroid/view/ViewGroup;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ag;->foN:Lcom/tencent/mm/pluginsdk/ui/applet/ae;

    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ag;->foO:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ag;->dmE:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ag;->foN:Lcom/tencent/mm/pluginsdk/ui/applet/ae;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->a(Lcom/tencent/mm/pluginsdk/ui/applet/ae;)Lcom/tencent/mm/pluginsdk/ui/applet/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ag;->foO:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ag;->dmE:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ai;->kl(I)V

    .line 94
    return-void
.end method
