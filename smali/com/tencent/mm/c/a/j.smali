.class public final Lcom/tencent/mm/c/a/j;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bLR:Lcom/tencent/mm/c/a/k;

.field public bLS:Lcom/tencent/mm/c/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/j;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/j;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/k;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/k;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/j;->bLR:Lcom/tencent/mm/c/a/k;

    .line 18
    new-instance v0, Lcom/tencent/mm/c/a/l;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/l;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/j;->bLS:Lcom/tencent/mm/c/a/l;

    .line 8
    const-string v0, "BindQQ"

    iput-object v0, p0, Lcom/tencent/mm/c/a/j;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/j;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/j;->gbY:Z

    return-void
.end method
