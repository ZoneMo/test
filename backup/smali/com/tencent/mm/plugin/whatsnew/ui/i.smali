.class final Lcom/tencent/mm/plugin/whatsnew/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V
    .locals 0
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/i;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 692
    check-cast p1, Lcom/tencent/mm/plugin/whatsnew/ui/k;

    check-cast p2, Lcom/tencent/mm/plugin/whatsnew/ui/k;

    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/i;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {p1, p2}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->c(Lcom/tencent/mm/plugin/whatsnew/ui/k;Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v0, p1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->month:I

    iget v1, p2, Lcom/tencent/mm/plugin/whatsnew/ui/k;->month:I

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/i;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {p1, p2}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->d(Lcom/tencent/mm/plugin/whatsnew/ui/k;Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v0, p1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->cQU:I

    iget v1, p2, Lcom/tencent/mm/plugin/whatsnew/ui/k;->cQU:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffN:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget-object v2, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffR:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    if-eq v1, v2, :cond_0

    iget-object v1, p2, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffN:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget-object v2, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffR:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
