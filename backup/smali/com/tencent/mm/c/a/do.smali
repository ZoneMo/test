.class public final Lcom/tencent/mm/c/a/do;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bOv:Lcom/tencent/mm/c/a/dp;

.field public bOw:Lcom/tencent/mm/c/a/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/do;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/do;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/dp;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/do;->bOv:Lcom/tencent/mm/c/a/dp;

    .line 28
    new-instance v0, Lcom/tencent/mm/c/a/dq;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dq;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/do;->bOw:Lcom/tencent/mm/c/a/dq;

    .line 12
    const-string v0, "NetSceneLbsFind"

    iput-object v0, p0, Lcom/tencent/mm/c/a/do;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/do;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/do;->gbY:Z

    return-void
.end method
