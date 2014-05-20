.class public final Lcom/tencent/mm/c/a/bi;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNi:Lcom/tencent/mm/c/a/bj;

.field public bNj:Lcom/tencent/mm/c/a/bk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/bi;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/bi;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 21
    new-instance v0, Lcom/tencent/mm/c/a/bj;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bj;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bi;->bNi:Lcom/tencent/mm/c/a/bj;

    .line 27
    new-instance v0, Lcom/tencent/mm/c/a/bk;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bk;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bi;->bNj:Lcom/tencent/mm/c/a/bk;

    .line 16
    const-string v0, "FMessageConversationStateOp"

    iput-object v0, p0, Lcom/tencent/mm/c/a/bi;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/bi;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/bi;->gbY:Z

    return-void
.end method
