.class public final Lcom/tencent/mm/c/a/bx;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNC:Lcom/tencent/mm/c/a/by;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/c/a/bx;->bLE:Z

    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/c/a/bx;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/by;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/by;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bx;->bNC:Lcom/tencent/mm/c/a/by;

    .line 8
    const-string v0, "FavNotify"

    iput-object v0, p0, Lcom/tencent/mm/c/a/bx;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/bx;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/bx;->gbY:Z

    return-void
.end method
