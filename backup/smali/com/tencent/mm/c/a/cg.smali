.class public final Lcom/tencent/mm/c/a/cg;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNI:Lcom/tencent/mm/c/a/ch;

.field public bNJ:Lcom/tencent/mm/c/a/ci;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/cg;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/cg;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 21
    new-instance v0, Lcom/tencent/mm/c/a/ch;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ch;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    .line 26
    new-instance v0, Lcom/tencent/mm/c/a/ci;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ci;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/cg;->bNJ:Lcom/tencent/mm/c/a/ci;

    .line 16
    const-string v0, "GameOperation"

    iput-object v0, p0, Lcom/tencent/mm/c/a/cg;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/cg;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/cg;->gbY:Z

    return-void
.end method
