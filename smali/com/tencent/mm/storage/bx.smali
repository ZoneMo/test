.class public final Lcom/tencent/mm/storage/bx;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giX:Lcom/tencent/mm/protocal/a/ww;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1449
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 1450
    new-instance v0, Lcom/tencent/mm/protocal/a/ww;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/ww;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/bx;->giX:Lcom/tencent/mm/protocal/a/ww;

    .line 1451
    iget-object v0, p0, Lcom/tencent/mm/storage/bx;->giX:Lcom/tencent/mm/protocal/a/ww;

    iput p1, v0, Lcom/tencent/mm/protocal/a/ww;->fAs:I

    .line 1452
    iget-object v0, p0, Lcom/tencent/mm/storage/bx;->giX:Lcom/tencent/mm/protocal/a/ww;

    iput-object p2, v0, Lcom/tencent/mm/protocal/a/ww;->fNk:Ljava/lang/String;

    .line 1453
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/tencent/mm/storage/bx;->giX:Lcom/tencent/mm/protocal/a/ww;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 1457
    const/16 v0, 0x25

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 1467
    const/16 v0, 0x7c

    return v0
.end method
