.class public final Lcom/tencent/mm/c/a/a;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bLG:Lcom/tencent/mm/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/a;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/a;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/b;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/a;->bLG:Lcom/tencent/mm/c/a/b;

    .line 8
    const-string v0, "AccountExpired"

    iput-object v0, p0, Lcom/tencent/mm/c/a/a;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/a;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/a;->gbY:Z

    return-void
.end method
