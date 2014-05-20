.class final Lcom/tencent/mm/ui/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gnB:Lcom/tencent/mm/ui/MMActivity;

.field final synthetic gnF:Landroid/view/MenuItem;

.field final synthetic gnG:Lcom/tencent/mm/ui/bs;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMActivity;Landroid/view/MenuItem;Lcom/tencent/mm/ui/bs;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/tencent/mm/ui/bp;->gnB:Lcom/tencent/mm/ui/MMActivity;

    iput-object p2, p0, Lcom/tencent/mm/ui/bp;->gnF:Landroid/view/MenuItem;

    iput-object p3, p0, Lcom/tencent/mm/ui/bp;->gnG:Lcom/tencent/mm/ui/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 777
    iget-object v0, p0, Lcom/tencent/mm/ui/bp;->gnB:Lcom/tencent/mm/ui/MMActivity;

    iget-object v1, p0, Lcom/tencent/mm/ui/bp;->gnF:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/tencent/mm/ui/bp;->gnG:Lcom/tencent/mm/ui/bs;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(Lcom/tencent/mm/ui/MMActivity;Landroid/view/MenuItem;Lcom/tencent/mm/ui/bs;)V

    .line 778
    return-void
.end method
