.class public final Lcom/tencent/mm/storage/by;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giY:Lcom/tencent/mm/protocal/a/xl;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    .line 1262
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 1263
    new-instance v0, Lcom/tencent/mm/protocal/a/xl;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/xl;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/by;->giY:Lcom/tencent/mm/protocal/a/xl;

    .line 1264
    iget-object v0, p0, Lcom/tencent/mm/storage/by;->giY:Lcom/tencent/mm/protocal/a/xl;

    iput p1, v0, Lcom/tencent/mm/protocal/a/xl;->fBj:I

    .line 1265
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/tencent/mm/storage/by;->giY:Lcom/tencent/mm/protocal/a/xl;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 1269
    const/16 v0, 0x1e

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 1279
    const/16 v0, 0x75

    return v0
.end method
