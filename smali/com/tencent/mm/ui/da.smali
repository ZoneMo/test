.class final Lcom/tencent/mm/ui/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gom:Lcom/tencent/mm/ui/cy;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/cy;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tencent/mm/ui/da;->gom:Lcom/tencent/mm/ui/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 144
    new-instance v0, Lcom/tencent/mm/c/a/m;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/m;-><init>()V

    .line 145
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLU:Lcom/tencent/mm/c/a/n;

    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/mm/c/a/n;->type:I

    .line 146
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 147
    iget-object v0, p0, Lcom/tencent/mm/ui/da;->gom:Lcom/tencent/mm/ui/cy;

    invoke-static {v0}, Lcom/tencent/mm/ui/cy;->b(Lcom/tencent/mm/ui/cy;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    return-void
.end method
