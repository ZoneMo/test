.class public final Lcom/tencent/mm/c/a/r;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bMe:Lcom/tencent/mm/c/a/s;

.field public bMf:Lcom/tencent/mm/c/a/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/r;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/r;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/s;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/s;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/r;->bMe:Lcom/tencent/mm/c/a/s;

    .line 18
    new-instance v0, Lcom/tencent/mm/c/a/t;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/t;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/r;->bMf:Lcom/tencent/mm/c/a/t;

    .line 8
    const-string v0, "CommandProcessor"

    iput-object v0, p0, Lcom/tencent/mm/c/a/r;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/r;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/r;->gbY:Z

    return-void
.end method
