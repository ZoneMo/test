.class public final Lcom/tencent/mm/storage/bw;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giW:Lcom/tencent/mm/protocal/a/qv;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1138
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 1139
    new-instance v0, Lcom/tencent/mm/protocal/a/qv;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/qv;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/bw;->giW:Lcom/tencent/mm/protocal/a/qv;

    .line 1140
    iget-object v0, p0, Lcom/tencent/mm/storage/bw;->giW:Lcom/tencent/mm/protocal/a/qv;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/qv;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 1141
    iget-object v0, p0, Lcom/tencent/mm/storage/bw;->giW:Lcom/tencent/mm/protocal/a/qv;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/qv;->fze:Lcom/tencent/mm/protocal/a/rw;

    .line 1142
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/tencent/mm/storage/bw;->giW:Lcom/tencent/mm/protocal/a/qv;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 1146
    const/16 v0, 0x10

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 1156
    const/16 v0, 0x71

    return v0
.end method
