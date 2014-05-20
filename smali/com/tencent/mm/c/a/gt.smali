.class public final Lcom/tencent/mm/c/a/gt;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bQN:Lcom/tencent/mm/c/a/gu;

.field public bQO:Lcom/tencent/mm/c/a/gv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/gt;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/gt;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 14
    new-instance v0, Lcom/tencent/mm/c/a/gu;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gu;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/gt;->bQN:Lcom/tencent/mm/c/a/gu;

    .line 20
    new-instance v0, Lcom/tencent/mm/c/a/gv;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gv;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/gt;->bQO:Lcom/tencent/mm/c/a/gv;

    .line 9
    const-string v0, "TVOperation"

    iput-object v0, p0, Lcom/tencent/mm/c/a/gt;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/gt;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/gt;->gbY:Z

    return-void
.end method
