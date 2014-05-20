.class final Lcom/tencent/mm/model/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/storage/m;


# instance fields
.field final synthetic ciN:Lcom/tencent/mm/model/be;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/be;)V
    .locals 0
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lcom/tencent/mm/model/bq;->ciN:Lcom/tencent/mm/model/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/storage/k;Lcom/tencent/mm/storage/i;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x1f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 950
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 952
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->setUsername(Ljava/lang/String;)V

    .line 956
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/h;->hJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->bv(Ljava/lang/String;)V

    .line 959
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->ro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/h;->hI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->bw(Ljava/lang/String;)V

    .line 962
    :cond_2
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 963
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->ru()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/h;->hJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->bI(Ljava/lang/String;)V

    .line 965
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 966
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->ru()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/h;->hI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->bJ(Ljava/lang/String;)V

    .line 970
    :cond_4
    invoke-static {p2}, Lcom/tencent/mm/model/w;->a(Lcom/tencent/mm/storage/i;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 971
    const/16 v0, 0x2b

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->bM(I)V

    .line 972
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/h;->hJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->bv(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/h;->hI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->bw(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/h;->hI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->bJ(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->bI(Ljava/lang/String;)V

    .line 1018
    :goto_0
    return-void

    .line 980
    :cond_5
    invoke-static {v1}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 981
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->qI()V

    .line 982
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->bU(I)V

    .line 983
    const/16 v0, 0x21

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->bM(I)V

    .line 984
    iget-object v0, p0, Lcom/tencent/mm/model/bq;->ciN:Lcom/tencent/mm/model/be;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->g(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/an;

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez p2, :cond_a

    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    :goto_1
    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qI()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/tencent/mm/model/an;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/mm/model/ao;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, v2, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/i;->bt(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/i;->bv(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bw(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qP()V

    .line 996
    :cond_6
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->re()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 998
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->qF()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/i;->bM(I)V

    .line 1003
    :cond_7
    invoke-static {v1}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1004
    const-string v0, "MicroMsg.MMCore"

    const-string v2, "update official account helper showhead %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1005
    invoke-virtual {p2, v7}, Lcom/tencent/mm/storage/i;->bM(I)V

    .line 1013
    :cond_8
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rd()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1014
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v5

    const-string v1, "@blacklist"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/o;->a([Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    :cond_9
    const-string v0, "MicroMsg.MMCore"

    const-string v1, "onPreInsertContact2: %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rn()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move-object v0, p2

    goto :goto_1
.end method
