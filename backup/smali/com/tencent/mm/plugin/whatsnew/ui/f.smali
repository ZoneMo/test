.class final Lcom/tencent/mm/plugin/whatsnew/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/whatsnew/ui/n;


# instance fields
.field final synthetic ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

.field final synthetic ffI:I

.field final synthetic ffJ:I

.field final synthetic ffK:I

.field final synthetic ffL:I

.field final synthetic ffM:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;IIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    iput p2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffI:I

    iput p3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffJ:I

    iput p4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffK:I

    iput p5, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffL:I

    iput p6, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffM:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aM(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 257
    if-eq p1, p2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->h(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I

    move-result v2

    add-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffI:I

    iget-object v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v4}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->h(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffJ:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 259
    cmpg-float v3, v2, v0

    if-gez v3, :cond_1

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    iget-object v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->i(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I

    move-result v2

    iget v3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffK:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffJ:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v3}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->j(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I

    move-result v3

    iget v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffK:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v3}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->k(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I

    move-result v3

    iget v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffL:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffJ:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v4}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->l(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I

    move-result v4

    iget v5, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffL:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v4}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->m(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I

    move-result v4

    iget v5, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffM:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffJ:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v0, v4

    iget-object v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v4}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->n(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I

    move-result v4

    iget v5, p0, Lcom/tencent/mm/plugin/whatsnew/ui/f;->ffM:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;III)V

    .line 268
    :cond_0
    return-void

    .line 259
    :cond_1
    cmpl-float v0, v2, v1

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
