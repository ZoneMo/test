.class final Lcom/tencent/mm/ui/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic gnB:Lcom/tencent/mm/ui/MMActivity;

.field final synthetic gnG:Lcom/tencent/mm/ui/bs;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMActivity;Lcom/tencent/mm/ui/bs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/tencent/mm/ui/bq;->gnB:Lcom/tencent/mm/ui/MMActivity;

    iput-object p2, p0, Lcom/tencent/mm/ui/bq;->gnG:Lcom/tencent/mm/ui/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 784
    iget-object v0, p0, Lcom/tencent/mm/ui/bq;->gnB:Lcom/tencent/mm/ui/MMActivity;

    iget-object v1, p0, Lcom/tencent/mm/ui/bq;->gnG:Lcom/tencent/mm/ui/bs;

    invoke-static {v0, p1, v1}, Lcom/tencent/mm/ui/MMActivity;->a(Lcom/tencent/mm/ui/MMActivity;Landroid/view/View;Lcom/tencent/mm/ui/bs;)Z

    move-result v0

    return v0
.end method
