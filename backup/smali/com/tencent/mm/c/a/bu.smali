.class public final Lcom/tencent/mm/c/a/bu;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNA:Lcom/tencent/mm/c/a/bv;

.field public bNB:Lcom/tencent/mm/c/a/bw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/bu;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/bu;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/bv;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bv;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bu;->bNA:Lcom/tencent/mm/c/a/bv;

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/bw;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bw;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bu;->bNB:Lcom/tencent/mm/c/a/bw;

    .line 8
    const-string v0, "FaceBookBindOperation"

    iput-object v0, p0, Lcom/tencent/mm/c/a/bu;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/bu;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/bu;->gbY:Z

    return-void
.end method
