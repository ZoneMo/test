.class final Lcom/tencent/mm/ui/tools/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private hjv:Ljava/util/List;

.field private hjw:Ljava/util/HashSet;

.field private hjx:Lcom/tencent/mm/n/m;

.field private hjy:Lcom/tencent/mm/n/n;

.field private hjz:Lcom/tencent/mm/w/u;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/n/m;Lcom/tencent/mm/n/n;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjz:Lcom/tencent/mm/w/u;

    .line 910
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjv:Ljava/util/List;

    .line 911
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjw:Ljava/util/HashSet;

    .line 912
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/bu;->hjx:Lcom/tencent/mm/n/m;

    .line 913
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/bu;->hjy:Lcom/tencent/mm/n/n;

    .line 914
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 915
    return-void
.end method

.method private ayE()V
    .locals 8

    .prologue
    .line 939
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 940
    const-string v0, "MicroMsg.GetImgService"

    const-string v1, "startDoScene, list is empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :goto_0
    return-void

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjv:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/tencent/mm/ui/tools/bv;

    .line 946
    new-instance v0, Lcom/tencent/mm/w/u;

    iget-wide v1, v7, Lcom/tencent/mm/ui/tools/bv;->cpL:J

    iget-wide v3, v7, Lcom/tencent/mm/ui/tools/bv;->cpM:J

    iget v5, v7, Lcom/tencent/mm/ui/tools/bv;->ctP:I

    iget-object v6, p0, Lcom/tencent/mm/ui/tools/bu;->hjy:Lcom/tencent/mm/n/n;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/w/u;-><init>(JJILcom/tencent/mm/n/n;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjz:Lcom/tencent/mm/w/u;

    .line 947
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjz:Lcom/tencent/mm/w/u;

    iget v1, v7, Lcom/tencent/mm/ui/tools/bv;->pos:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/u;->dL(I)V

    .line 948
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bu;->hjz:Lcom/tencent/mm/w/u;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 961
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 968
    :goto_0
    return-void

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjx:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 966
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjv:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 967
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/bu;->ayE()V

    goto :goto_0
.end method

.method public final a(JJII)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 918
    new-instance v0, Lcom/tencent/mm/ui/tools/bv;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/tools/bv;-><init>(JJII)V

    .line 919
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bu;->hjw:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    const-string v1, "MicroMsg.GetImgService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "push fail, info already in history list, new added info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 935
    :goto_0
    return v0

    .line 923
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bu;->hjw:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 925
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bu;->hjv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 926
    const-string v1, "MicroMsg.GetImgService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "push, already in todo list, new added info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 927
    goto :goto_0

    .line 930
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bu;->hjv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 932
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/bu;->ayE()V

    :cond_2
    move v0, v8

    .line 935
    goto :goto_0
.end method

.method public final detach()V
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjz:Lcom/tencent/mm/w/u;

    if-eqz v0, :cond_0

    .line 953
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bu;->hjz:Lcom/tencent/mm/w/u;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bu;->hjv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 956
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 957
    return-void
.end method
