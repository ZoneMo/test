.class public final Lcom/tencent/mm/storage/br;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giR:Lcom/tencent/mm/protocal/a/oo;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    .line 697
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 698
    new-instance v0, Lcom/tencent/mm/protocal/a/oo;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/oo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/br;->giR:Lcom/tencent/mm/protocal/a/oo;

    .line 699
    iget-object v0, p0, Lcom/tencent/mm/storage/br;->giR:Lcom/tencent/mm/protocal/a/oo;

    iput p1, v0, Lcom/tencent/mm/protocal/a/oo;->fPB:I

    .line 700
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/tencent/mm/storage/br;->giR:Lcom/tencent/mm/protocal/a/oo;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 693
    const/16 v0, 0x2b

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 709
    const/16 v0, 0x80

    return v0
.end method
