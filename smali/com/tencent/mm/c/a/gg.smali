.class public final Lcom/tencent/mm/c/a/gg;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bQD:Lcom/tencent/mm/c/a/gh;

.field public bQE:Lcom/tencent/mm/c/a/gi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/gg;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/gg;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/gh;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gh;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/gg;->bQD:Lcom/tencent/mm/c/a/gh;

    .line 18
    new-instance v0, Lcom/tencent/mm/c/a/gi;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gi;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/gg;->bQE:Lcom/tencent/mm/c/a/gi;

    .line 8
    const-string v0, "SnsfillEventMedia"

    iput-object v0, p0, Lcom/tencent/mm/c/a/gg;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/gg;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/gg;->gbY:Z

    return-void
.end method
