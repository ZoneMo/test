.class public final Lcom/tencent/mm/ui/tools/hu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hnI:I

.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method protected constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 1
    .parameter

    .prologue
    .line 3751
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/hu;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3752
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/tools/hu;->hnI:I

    return-void
.end method


# virtual methods
.method public final aOf()V
    .locals 1

    .prologue
    .line 3755
    iget v0, p0, Lcom/tencent/mm/ui/tools/hu;->hnI:I

    if-nez v0, :cond_0

    .line 3756
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hu;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->L(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    .line 3759
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/tools/hu;->hnI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/tools/hu;->hnI:I

    .line 3762
    return-void
.end method

.method public final aOg()V
    .locals 1

    .prologue
    .line 3765
    iget v0, p0, Lcom/tencent/mm/ui/tools/hu;->hnI:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/tools/hu;->hnI:I

    .line 3766
    iget v0, p0, Lcom/tencent/mm/ui/tools/hu;->hnI:I

    if-gtz v0, :cond_0

    .line 3769
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hu;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->M(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    .line 3771
    :cond_0
    return-void
.end method

.method public final aOh()Z
    .locals 1

    .prologue
    .line 3774
    iget v0, p0, Lcom/tencent/mm/ui/tools/hu;->hnI:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
