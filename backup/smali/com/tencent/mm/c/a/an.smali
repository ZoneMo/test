.class public final Lcom/tencent/mm/c/a/an;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bMM:Lcom/tencent/mm/c/a/ao;

.field public bMN:Lcom/tencent/mm/c/a/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/an;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/an;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/ao;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ao;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/an;->bMM:Lcom/tencent/mm/c/a/ao;

    .line 18
    new-instance v0, Lcom/tencent/mm/c/a/ap;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/an;->bMN:Lcom/tencent/mm/c/a/ap;

    .line 8
    const-string v0, "ExtIsAppidValid"

    iput-object v0, p0, Lcom/tencent/mm/c/a/an;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/an;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/an;->gbY:Z

    return-void
.end method
