.class Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$1;
.super Linfo/guardianproject/database/CursorDataWindow;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;


# direct methods
.method constructor <init>(Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$1;->this$0:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;

    .line 226
    invoke-direct {p0, p2}, Linfo/guardianproject/database/CursorDataWindow;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public createItem()Linfo/guardianproject/database/CursorDataItem;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$1;->this$0:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->createDataItem()Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    return-object v0
.end method

.method public rebulidAllChangeData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$1;->this$0:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->rebulidAllChangeData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
