.class public final Lcom/tencent/mm/c/a/ef;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bPd:Lcom/tencent/mm/c/a/eg;

.field public bPe:Lcom/tencent/mm/c/a/eh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ef;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ef;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/eg;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/eg;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ef;->bPd:Lcom/tencent/mm/c/a/eg;

    .line 23
    new-instance v0, Lcom/tencent/mm/c/a/eh;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/eh;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ef;->bPe:Lcom/tencent/mm/c/a/eh;

    .line 12
    const-string v0, "PublishScanCodeResult"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ef;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ef;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ef;->gbY:Z

    return-void
.end method
