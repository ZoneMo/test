.class public final Lcom/tencent/mm/storage/bv;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giV:Lcom/tencent/mm/protocal/a/pp;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1323
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 1324
    new-instance v0, Lcom/tencent/mm/protocal/a/pp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/pp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/bv;->giV:Lcom/tencent/mm/protocal/a/pp;

    .line 1325
    iget-object v0, p0, Lcom/tencent/mm/storage/bv;->giV:Lcom/tencent/mm/protocal/a/pp;

    iput p1, v0, Lcom/tencent/mm/protocal/a/pp;->fSa:I

    .line 1326
    iget-object v0, p0, Lcom/tencent/mm/storage/bv;->giV:Lcom/tencent/mm/protocal/a/pp;

    iput-object p2, v0, Lcom/tencent/mm/protocal/a/pp;->fSb:Ljava/lang/String;

    .line 1327
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/tencent/mm/storage/bv;->giV:Lcom/tencent/mm/protocal/a/pp;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 1331
    const/16 v0, 0x1a

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 1341
    const/16 v0, 0x7a

    return v0
.end method
