.class public final Lcom/tencent/mm/c/a/az;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/az;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/az;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    const-string v0, "ExtRequestAccountSync"

    iput-object v0, p0, Lcom/tencent/mm/c/a/az;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/az;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/az;->gbY:Z

    return-void
.end method
