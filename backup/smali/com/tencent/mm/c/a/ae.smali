.class public final Lcom/tencent/mm/c/a/ae;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bMs:Lcom/tencent/mm/c/a/af;

.field public bMt:Lcom/tencent/mm/c/a/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ae;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ae;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/af;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/af;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ae;->bMs:Lcom/tencent/mm/c/a/af;

    .line 21
    new-instance v0, Lcom/tencent/mm/c/a/ag;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ag;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ae;->bMt:Lcom/tencent/mm/c/a/ag;

    .line 8
    const-string v0, "ExtCall"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ae;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ae;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ae;->gbY:Z

    return-void
.end method
