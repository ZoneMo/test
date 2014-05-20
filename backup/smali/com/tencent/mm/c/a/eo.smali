.class public final Lcom/tencent/mm/c/a/eo;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bPp:Lcom/tencent/mm/c/a/ep;

.field public bPq:Lcom/tencent/mm/c/a/eq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/eo;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/eo;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/ep;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ep;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/eo;->bPp:Lcom/tencent/mm/c/a/ep;

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/eq;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/eq;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/eo;->bPq:Lcom/tencent/mm/c/a/eq;

    .line 8
    const-string v0, "RcptAddress"

    iput-object v0, p0, Lcom/tencent/mm/c/a/eo;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/eo;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/eo;->gbY:Z

    return-void
.end method
