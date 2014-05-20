.class public final Lcom/tencent/mm/c/a/bf;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNg:Lcom/tencent/mm/c/a/bg;

.field public bNh:Lcom/tencent/mm/c/a/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/bf;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/bf;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/bg;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bg;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bf;->bNg:Lcom/tencent/mm/c/a/bg;

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/bh;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bh;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bf;->bNh:Lcom/tencent/mm/c/a/bh;

    .line 8
    const-string v0, "ExtVoiceMsgIdToFileName"

    iput-object v0, p0, Lcom/tencent/mm/c/a/bf;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/bf;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/bf;->gbY:Z

    return-void
.end method
