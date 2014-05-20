.class public final Lcom/tencent/mm/c/a/at;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bMU:Lcom/tencent/mm/c/a/au;

.field public bMV:Lcom/tencent/mm/c/a/av;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/at;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/at;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/au;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/au;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/at;->bMU:Lcom/tencent/mm/c/a/au;

    .line 19
    new-instance v0, Lcom/tencent/mm/c/a/av;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/av;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/at;->bMV:Lcom/tencent/mm/c/a/av;

    .line 8
    const-string v0, "ExtPlayer"

    iput-object v0, p0, Lcom/tencent/mm/c/a/at;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/at;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/at;->gbY:Z

    return-void
.end method
