.class final Lcom/tencent/mm/ui/voicesearch/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cmw:Lcom/tencent/mm/n/x;

.field final synthetic htK:Lcom/tencent/mm/ui/voicesearch/j;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/voicesearch/j;Lcom/tencent/mm/n/x;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/tencent/mm/ui/voicesearch/m;->htK:Lcom/tencent/mm/ui/voicesearch/j;

    iput-object p2, p0, Lcom/tencent/mm/ui/voicesearch/m;->cmw:Lcom/tencent/mm/n/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 736
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/m;->cmw:Lcom/tencent/mm/n/x;

    check-cast v0, Lcom/tencent/mm/modelsimple/aj;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/aj;->CB()Lcom/tencent/mm/protocal/a/sj;

    move-result-object v0

    .line 738
    const-string v1, "MicroMsg.SearchResultAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "count "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/tencent/mm/protocal/a/sj;->fKH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget v1, v0, Lcom/tencent/mm/protocal/a/sj;->fKH:I

    if-lez v1, :cond_2

    .line 741
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/sj;->fKI:Ljava/util/LinkedList;

    .line 742
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/sh;

    .line 743
    iget v2, v0, Lcom/tencent/mm/protocal/a/sh;->fNp:I

    invoke-static {v2}, Lcom/tencent/mm/model/w;->cm(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    iget-object v2, p0, Lcom/tencent/mm/ui/voicesearch/m;->htK:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-static {v2}, Lcom/tencent/mm/ui/voicesearch/j;->f(Lcom/tencent/mm/ui/voicesearch/j;)Ljava/util/LinkedList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 745
    iget-object v2, p0, Lcom/tencent/mm/ui/voicesearch/m;->htK:Lcom/tencent/mm/ui/voicesearch/j;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v2, v3}, Lcom/tencent/mm/ui/voicesearch/j;->a(Lcom/tencent/mm/ui/voicesearch/j;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 747
    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/voicesearch/m;->htK:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-static {v2}, Lcom/tencent/mm/ui/voicesearch/j;->f(Lcom/tencent/mm/ui/voicesearch/j;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 752
    :cond_2
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/sj;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v1

    .line 754
    const-string v2, "MicroMsg.SearchResultAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "user "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 757
    new-instance v2, Lcom/tencent/mm/protocal/a/sh;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/sh;-><init>()V

    .line 758
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sj;->fEI:Lcom/tencent/mm/protocal/a/rw;

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 759
    iget v3, v0, Lcom/tencent/mm/protocal/a/sj;->fNp:I

    iput v3, v2, Lcom/tencent/mm/protocal/a/sh;->fNp:I

    .line 760
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sj;->cqr:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/sh;->cqr:Ljava/lang/String;

    .line 761
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sj;->fNa:Lcom/tencent/mm/protocal/a/rw;

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/sh;->fNa:Lcom/tencent/mm/protocal/a/rw;

    .line 762
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sj;->cqt:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/sh;->cqt:Ljava/lang/String;

    .line 763
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sj;->cqx:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/sh;->cqx:Ljava/lang/String;

    .line 764
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sj;->Tv:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/sh;->Tv:Ljava/lang/String;

    .line 765
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sj;->Tu:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/sh;->Tu:Ljava/lang/String;

    .line 766
    iget v3, v0, Lcom/tencent/mm/protocal/a/sj;->cqq:I

    iput v3, v2, Lcom/tencent/mm/protocal/a/sh;->cqq:I

    .line 767
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sj;->fNq:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/sh;->fNq:Ljava/lang/String;

    .line 768
    iget v3, v0, Lcom/tencent/mm/protocal/a/sj;->fNt:I

    iput v3, v2, Lcom/tencent/mm/protocal/a/sh;->fNt:I

    .line 769
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sj;->fNr:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/sh;->fNr:Ljava/lang/String;

    .line 770
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sj;->fNs:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/sh;->fNs:Ljava/lang/String;

    .line 771
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sj;->fNv:Lcom/tencent/mm/protocal/a/vp;

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    .line 773
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v3

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/sj;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/tencent/mm/m/m;->c(Ljava/lang/String;[B)Z

    .line 774
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/m;->htK:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-static {v0}, Lcom/tencent/mm/ui/voicesearch/j;->f(Lcom/tencent/mm/ui/voicesearch/j;)Ljava/util/LinkedList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 775
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/m;->htK:Lcom/tencent/mm/ui/voicesearch/j;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/voicesearch/j;->a(Lcom/tencent/mm/ui/voicesearch/j;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 777
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/m;->htK:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-static {v0}, Lcom/tencent/mm/ui/voicesearch/j;->f(Lcom/tencent/mm/ui/voicesearch/j;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 778
    iget v0, v2, Lcom/tencent/mm/protocal/a/sh;->fNp:I

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cm(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 779
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/m;->htK:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-static {v0}, Lcom/tencent/mm/ui/voicesearch/j;->f(Lcom/tencent/mm/ui/voicesearch/j;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_4
    const-string v0, "MicroMsg.SearchResultAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "count "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/voicesearch/m;->htK:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-static {v2}, Lcom/tencent/mm/ui/voicesearch/j;->f(Lcom/tencent/mm/ui/voicesearch/j;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/m;->htK:Lcom/tencent/mm/ui/voicesearch/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/voicesearch/j;->b(Lcom/tencent/mm/ui/voicesearch/j;Z)Z

    .line 787
    return-void
.end method
