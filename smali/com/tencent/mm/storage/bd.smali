.class public final Lcom/tencent/mm/storage/bd;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giD:Lcom/tencent/mm/protocal/a/dv;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 901
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 902
    new-instance v0, Lcom/tencent/mm/protocal/a/dv;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/dv;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/bd;->giD:Lcom/tencent/mm/protocal/a/dv;

    .line 903
    iget-object v0, p0, Lcom/tencent/mm/storage/bd;->giD:Lcom/tencent/mm/protocal/a/dv;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/dv;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 904
    iget-object v0, p0, Lcom/tencent/mm/storage/bd;->giD:Lcom/tencent/mm/protocal/a/dv;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/dv;->fBb:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v0, p0, Lcom/tencent/mm/storage/bd;->giD:Lcom/tencent/mm/protocal/a/dv;

    iput v3, v0, Lcom/tencent/mm/protocal/a/dv;->fAC:I

    .line 906
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/tencent/mm/storage/bd;->giD:Lcom/tencent/mm/protocal/a/dv;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 910
    const/16 v0, 0x9

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 920
    const/16 v0, 0x6b

    return v0
.end method
