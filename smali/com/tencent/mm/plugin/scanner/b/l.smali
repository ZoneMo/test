.class public final Lcom/tencent/mm/plugin/scanner/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static egs:Lcom/tencent/mm/plugin/scanner/b/l;


# instance fields
.field private egt:[B

.field private egu:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/l;->egt:[B

    .line 11
    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/l;->egu:[B

    .line 13
    return-void
.end method

.method public static aaR()Lcom/tencent/mm/plugin/scanner/b/l;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/tencent/mm/plugin/scanner/b/l;->egs:Lcom/tencent/mm/plugin/scanner/b/l;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/tencent/mm/plugin/scanner/b/l;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/scanner/b/l;-><init>()V

    sput-object v0, Lcom/tencent/mm/plugin/scanner/b/l;->egs:Lcom/tencent/mm/plugin/scanner/b/l;

    .line 19
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/scanner/b/l;->egs:Lcom/tencent/mm/plugin/scanner/b/l;

    return-object v0
.end method


# virtual methods
.method public final aaS()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/l;->egt:[B

    if-eqz v0, :cond_0

    .line 44
    iput-object v1, p0, Lcom/tencent/mm/plugin/scanner/b/l;->egt:[B

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/l;->egu:[B

    if-eqz v0, :cond_1

    .line 47
    iput-object v1, p0, Lcom/tencent/mm/plugin/scanner/b/l;->egu:[B

    .line 49
    :cond_1
    return-void
.end method

.method public final hJ(I)[B
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/l;->egt:[B

    if-nez v0, :cond_1

    .line 24
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/l;->egt:[B

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/l;->egt:[B

    return-object v0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/l;->egt:[B

    array-length v0, v0

    if-eq v0, p1, :cond_0

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/l;->egt:[B

    .line 27
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/l;->egt:[B

    goto :goto_0
.end method
