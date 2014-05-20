.class public final Lcom/tencent/mm/c/a/fl;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bQh:Lcom/tencent/mm/c/a/fm;

.field public bQi:Lcom/tencent/mm/c/a/fn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/fl;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/fl;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/fm;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fm;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/fl;->bQh:Lcom/tencent/mm/c/a/fm;

    .line 16
    new-instance v0, Lcom/tencent/mm/c/a/fn;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fn;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/fl;->bQi:Lcom/tencent/mm/c/a/fn;

    .line 8
    const-string v0, "ResetCardRetryCounter"

    iput-object v0, p0, Lcom/tencent/mm/c/a/fl;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/fl;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/fl;->gbY:Z

    return-void
.end method
