.class public final Lcom/tencent/mm/c/a/m;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bLU:Lcom/tencent/mm/c/a/n;

.field public bLV:Lcom/tencent/mm/c/a/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/m;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/m;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 28
    new-instance v0, Lcom/tencent/mm/c/a/n;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/n;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/m;->bLU:Lcom/tencent/mm/c/a/n;

    .line 33
    new-instance v0, Lcom/tencent/mm/c/a/o;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/o;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    .line 23
    const-string v0, "Broadcast"

    iput-object v0, p0, Lcom/tencent/mm/c/a/m;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/m;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/m;->gbY:Z

    return-void
.end method
